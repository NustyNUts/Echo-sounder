import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {

    //fields for enter settings
    Rectangle{
        id:settingsField
        width: mainWin.width* 1/3
        height: mainWin.height
        x:0
        y:0
        border.width: 5

        Rectangle{
            id:dataField
            width:parent.width
            height:parent.height/5
            border.width: borderWidth

            TextField{

            }
        }
        Rectangle{
            id:timeField
            width:parent.width
            height:parent.height/5
            anchors.top: dataField.bottom
            anchors.topMargin: 0
            border.width: borderWidth

        }
        Rectangle{
            id:sSpeedField
            width:parent.width
            height:parent.height/5
            anchors.top: timeField.bottom
            anchors.topMargin: 0
            border.width: borderWidth

        }
        Rectangle{
            id:penentrationField
            width:parent.width
            height:parent.height/5
            anchors.top: sSpeedField.bottom
            anchors.topMargin: 0
            border.width: borderWidth

        }
        Rectangle{
            id:testNoiseField
            width:parent.width
            height:parent.height/5
            anchors.top: penentrationField.bottom
            anchors.topMargin: 0
            border.width: borderWidth

        }
    }
    //field for show test and noise
    Rectangle{
        id:testField
        width:mainWin.width * 2/3
        height: mainWin.height
        x:settingsField.width
        y:0
    }

}
