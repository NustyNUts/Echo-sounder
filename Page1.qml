import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    property int j: 0
    function draw(){
        var ctx =
        console.log("here")
        ctx.clearRect(0,0,width,height)
        ctx.translate(width-borderWidth,0)
        for(var j=0;j<1200;j++){
                //ctx.translate(-j*10,0)

            for (var i=0; i<anArray.length; i++){
                ctx.fillStyle=colorArray[i]
                ctx.fillRect(j,anArray[i]+borderWidth*10-pointSize/2
                             ,pointSize,pointSize)
            }
            ctx.translate(-pointSize,0)
            ctx.translate(-200,0)
        }
    }


    property int pointSize: 2
    Rectangle{
        id: depthField
       // color:"#000000"
        x:0
        y:mainWin.height - mainWin.height*0.90
        border.width: borderWidth
        border.color: "#9E9E9E"
        width:mainWin.width-depthScaleImg.width
        height: mainWin.height-mainWin.height*0.20
        Canvas{

            id: echoField1
            anchors.fill: parent
            onPaint: {
                        var ctx;
                        ctx = getContext("2d")
                        ctx.clearRect(0,0,width,height)
                        ctx.translate(width-borderWidth,0)
                        for(var j=0;j<1200;j++){
                            for (var i=0; i<anArray.length; i++){
                                ctx.fillStyle=colorArray[i]
                                ctx.fillRect(j,anArray[i]+borderWidth*10-pointSize/2
                                             ,pointSize,pointSize)
                            }
                            ctx.translate(-pointSize,0)
                }
            }
        }
    }
}

