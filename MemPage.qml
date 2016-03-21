import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {

    Rectangle{
        id: depthField
        color:"#000000"
        x:0
        y:mainWin.height - mainWin.height*0.90
        border.width: borderWidth
        border.color: "#9E9E9E"
        width:mainWin.width-depthScaleImg.width
        height: mainWin.height-mainWin.height*0.20
    }
}
