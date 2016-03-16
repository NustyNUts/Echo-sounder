import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {

    Rectangle{
        id: depthField
        color:"#000000"
        x:0
        y:mainWin.height - mainWin.height*0.90
        border.width: 5
        border.color: "#9E9E9E"
        width:mainWin.width
        height: mainWin.height-mainWin.height*0.20
    }
    Rectangle{
        id: timeField
        x:0
        y:0
        height: mainWin.height*0.10;
        width: mainWin.width*0.25
        border.width: 5
        border.color: "#9E9E9E"
        color :"white"
        Text{
            anchors.centerIn: parent
            text: currentTime

        }
    }
    Rectangle{
        id: latitudeField
        x:timeField.width
        y:0
        height: mainWin.height*0.10;
        width: mainWin.width*0.20
        border.width: 5
        border.color: "#9E9E9E"
        color :"white"
        Text{
            anchors.centerIn: parent
            text: latitude

        }
    }
    Rectangle{
        id: longirudeField
        x:timeField.width+latitudeField.width
        y:0
        height: mainWin.height*0.10;
        width: mainWin.width*0.20
        border.width: 5
        border.color: "#9E9E9E"
        color :"white"
        Text{
            anchors.centerIn: parent
            text: longitude
        }
    }
    Rectangle{
        id: soundSpeedField
        x:timeField.width+latitudeField.width+longirudeField.width
        y:0
        height: mainWin.height*0.10;
        width: mainWin.width*0.20
        border.width: 5
        border.color: "#9E9E9E"
        color :"white"
        Text{
                   anchors.centerIn: parent
                   text: "Ск. звука: "+soundSpeed+" м/с"
               }
    }



}
