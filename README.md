# Bucket-User-Activity-event-logger

# Architecture Diagram
<img width="771" height="471" alt="S3eventTracker" src="https://github.com/user-attachments/assets/c339f184-a8fd-4edc-91f4-e42f7b768a88" />




[S3eventTracker.drawio](https://github.com/user-attachments/files/24766080/S3eventTracker.drawio)
<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36" version="29.3.4">
  <diagram name="Page-1" id="lzUv2qR2vPcSS4NG_Sex">
    <mxGraphModel dx="1042" dy="527" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="wm-bXqVV8817BniXBkbi-6" parent="1" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_account;strokeColor=#CD2264;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#CD2264;dashed=0;" value="Product account" vertex="1">
          <mxGeometry height="470" width="240" x="30" y="40" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-2" parent="wm-bXqVV8817BniXBkbi-6" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#E7157B;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.eventbridge;" value="" vertex="1">
          <mxGeometry height="78" width="78" x="140" y="180.5" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-5" parent="wm-bXqVV8817BniXBkbi-6" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;strokeColor=#ffffff;fillColor=#232F3E;dashed=0;verticalLabelPosition=middle;verticalAlign=bottom;align=center;html=1;whiteSpace=wrap;fontSize=10;fontStyle=1;spacing=3;shape=mxgraph.aws4.productIcon;prIcon=mxgraph.aws4.s3;" value="Amazon S3" vertex="1">
          <mxGeometry height="99" width="80" x="10" y="170" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-8" edge="1" parent="wm-bXqVV8817BniXBkbi-6" source="wm-bXqVV8817BniXBkbi-5" style="endArrow=classic;html=1;rounded=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;" target="wm-bXqVV8817BniXBkbi-2" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="360" y="260" as="sourcePoint" />
            <mxPoint x="410" y="210" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-12" parent="wm-bXqVV8817BniXBkbi-6" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="Bucket Creation" vertex="1">
          <mxGeometry height="30" width="60" x="20" y="280" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-13" parent="wm-bXqVV8817BniXBkbi-6" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="Event bridge rule" vertex="1">
          <mxGeometry height="30" width="60" x="149" y="280" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-7" parent="1" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_account;strokeColor=#CD2264;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#CD2264;dashed=0;" value="Central account" vertex="1">
          <mxGeometry height="470" width="450" x="350" y="40" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-4" parent="wm-bXqVV8817BniXBkbi-7" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#E7157B;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.cloudwatch_2;" value="" vertex="1">
          <mxGeometry height="78" width="78" x="340" y="180" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-3" parent="wm-bXqVV8817BniXBkbi-7" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#E7157B;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.cloudtrail;" value="" vertex="1">
          <mxGeometry height="78" width="78" x="180" y="180" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-1" parent="wm-bXqVV8817BniXBkbi-7" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#ED7100;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.lambda;" value="" vertex="1">
          <mxGeometry height="78" width="78" x="30" y="180" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-10" edge="1" parent="wm-bXqVV8817BniXBkbi-7" source="wm-bXqVV8817BniXBkbi-1" style="endArrow=classic;html=1;rounded=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;exitPerimeter=0;" target="wm-bXqVV8817BniXBkbi-3" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="40" y="260" as="sourcePoint" />
            <mxPoint x="90" y="210" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-11" edge="1" parent="wm-bXqVV8817BniXBkbi-7" source="wm-bXqVV8817BniXBkbi-3" style="endArrow=classic;html=1;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;exitPerimeter=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;" target="wm-bXqVV8817BniXBkbi-4" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="40" y="260" as="sourcePoint" />
            <mxPoint x="90" y="210" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-14" parent="wm-bXqVV8817BniXBkbi-7" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="Lambda add bucket names&amp;nbsp;" vertex="1">
          <mxGeometry height="30" width="60" x="34" y="290" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-15" parent="wm-bXqVV8817BniXBkbi-7" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="CloudWatch Log Group" vertex="1">
          <mxGeometry height="30" width="60" x="349" y="280" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-16" parent="wm-bXqVV8817BniXBkbi-7" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="Cloud trail" vertex="1">
          <mxGeometry height="30" width="60" x="189" y="290" as="geometry" />
        </mxCell>
        <mxCell id="wm-bXqVV8817BniXBkbi-9" edge="1" parent="1" source="wm-bXqVV8817BniXBkbi-2" style="endArrow=classic;html=1;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;exitPerimeter=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;" target="wm-bXqVV8817BniXBkbi-1" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="390" y="300" as="sourcePoint" />
            <mxPoint x="440" y="250" as="targetPoint" />
          </mxGeometry>
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
