provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags =  {
      Project = "S3tester"
    }
  }
}

## Cloud Trail resources

resource "aws_cloudtrail" "example" {
  depends_on = [aws_s3_bucket_policy.example]

  name                          = "jared-example-2211"
  s3_bucket_name                = aws_s3_bucket.example.id
  s3_key_prefix                 = "prefix"
  is_multi_region_trail         = true
  include_global_service_events = true
  enable_logging                = true
}

resource "aws_s3_bucket" "example" {
  bucket        = "jared-tf-test-trail"
  force_destroy = true
}

data "aws_iam_policy_document" "example" {

  statement {
    sid    = "AWSCloudTrailAclCheck"
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["cloudtrail.amazonaws.com"]
    }

    actions   = ["s3:GetBucketAcl"]
    resources = [aws_s3_bucket.example.arn]
  }

  statement {
    sid    = "AWSCloudTrailWrite"
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["cloudtrail.amazonaws.com"]
    }

    actions   = ["s3:PutObject"]
    resources = [
      "${aws_s3_bucket.example.arn}/prefix/AWSLogs/${data.aws_caller_identity.current.account_id}/*"
    ]

    condition {
      test     = "StringEquals"
      variable = "s3:x-amz-acl"
      values   = ["bucket-owner-full-control"]
    }
  }
}

resource "aws_s3_bucket_policy" "example" {
  bucket = aws_s3_bucket.example.id
  policy = data.aws_iam_policy_document.example.json
}

data "aws_caller_identity" "current" {}

data "aws_partition" "current" {}

data "aws_region" "current" {}

## Eventbridge infrastructure

resource "aws_cloudwatch_event_rule" "s3_bucket_create" {
  name = "s3-bucket-create-trigger"

  event_pattern = jsonencode({
    source = ["aws.s3"],
    detail-type = ["AWS API Call via CloudTrail"],
    detail = {
      eventSource = ["s3.amazonaws.com"],
      eventName   = ["CreateBucket"]
    }
  })
}

resource "aws_cloudwatch_event_target" "invoke_lambda" {
  rule = aws_cloudwatch_event_rule.s3_bucket_create.name
  arn  = aws_lambda_function.cloudtrail_sync.arn
}

resource "aws_lambda_permission" "allow_eventbridge" {
  statement_id  = "AllowEventBridgeInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.cloudtrail_sync.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.s3_bucket_create.arn
}

## Lambda infrstructure

resource "aws_lambda_function" "cloudtrail_sync" {
  function_name = "cloudtrail-s3-sync"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.11"
  timeout       = 60

  filename = "lambda.zip"

  environment {
    variables = {
      TRAIL_NAME = aws_cloudtrail.example.name
    }
  }

  depends_on = [
    aws_cloudwatch_log_group.cloudtrail_sync
  ]
}

## Lambda IAM role

resource "aws_iam_role" "lambda_role" {
  name = "cloudtrail-s3-sync-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy" "lambda_policy" {
  role = aws_iam_role.lambda_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:ListAllMyBuckets"]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = [
          "cloudtrail:GetTrail",
          "cloudtrail:PutEventSelectors"
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = [
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]
        Resource = "*"
      }
    ]
  })
}

## CloudWatch log group

resource "aws_cloudwatch_log_group" "cloudtrail_sync" {
  name              = "/aws/lambda/cloudtrail-s3-sync"
  retention_in_days = 14
}
