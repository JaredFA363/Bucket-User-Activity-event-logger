import boto3
import logging
import os

logger = logging.getLogger()
logger.setLevel(logging.INFO)

cloudtrail = boto3.client("cloudtrail")
s3 = boto3.client("s3")

TRAIL_NAME = os.environ["TRAIL_NAME"]

def lambda_handler(event, context):
    logger.info("Received event: %s", event)

    buckets = s3.list_buckets()["Buckets"]

    bucket_arns = [
        f"arn:aws:s3:::{bucket['Name']}/"
        for bucket in buckets
    ]

    logger.info("Discovered %d S3 buckets", len(bucket_arns))

    advanced_event_selectors = [
        {
            "Name": "S3DataEvents",
            "FieldSelectors": [
                {
                    "Field": "eventCategory",
                    "Equals": ["Data"]
                },
                {
                    "Field": "resources.type",
                    "Equals": ["AWS::S3::Object"]
                },
                {
                    "Field": "resources.ARN",
                    "StartsWith": bucket_arns
                }
            ]
        }
    ]

    response = cloudtrail.put_event_selectors(
        TrailName=TRAIL_NAME,
        AdvancedEventSelectors=advanced_event_selectors
    )

    logger.info("Updated CloudTrail advanced selectors: %s", response)

    return {
        "status": "success",
        "bucket_count": len(bucket_arns)
    }
