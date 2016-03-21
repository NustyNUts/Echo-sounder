import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

Rectangle {
    property int butNum: 0
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
            height:parent.height/6

            TextField{
                    anchors.fill: parent
                    anchors.centerIn: parent
                    horizontalAlignment: TextInput.AlignHCenter
                    text:currentData
                    inputMask: "99:99:9999"
                    font.family: fontLCD.name
                    font.pixelSize: width/5
                    style:TextFieldStyle{
                        background:Rectangle{
                            radius: 0
                            border.width: borderWidth
                            color: butNum === 1 ? "green" : "white"
                        }
                    }
            }
            MouseArea{
                z:10
                anchors.fill: parent
                onClicked: {
                    butNum = 1
                }
            }
        }

        Rectangle{
            id:timeField
            width:parent.width
            height:parent.height/6
            anchors.top: dataField.bottom
            anchors.topMargin: 0
            TextField{
                anchors.fill: parent
                anchors.centerIn: parent
                horizontalAlignment: TextInput.AlignHCenter
                text:currentTime
                inputMask: "99:99:99"
                font.family: fontLCD.name
                font.pixelSize: width/5
                style:TextFieldStyle{
                    background:Rectangle{
                        radius: 0
                        border.width: borderWidth
                        color: butNum === 2 ? "green" : "white"
                    }
                }
            }
            MouseArea{
                z:10
                anchors.fill: parent
                onClicked: {
                    butNum = 2
                }
            }
        }
        Rectangle{
            id:sSpeedField
            width:parent.width
            height:parent.height/6
            anchors.top: timeField.bottom
            anchors.topMargin: 0
            border.width: borderWidth
            color: butNum === 3 ? "green" : "white"
            Text{
                anchors.fill: parent
                anchors.centerIn: parent
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                text:qsTr("Скорость звука\n")+soundSpeed+"м/с"
                font.family: fontLCD.name
                font.pixelSize: width/10

            }
            MouseArea{
                z:10
                anchors.fill: parent
                onClicked: {
                    butNum = 3
                }
            }

        }
        Rectangle{
            id:penentrationField //заглубление
            width:parent.width
            height:parent.height/6
            anchors.top: sSpeedField.bottom
            anchors.topMargin: 0
            border.width: borderWidth
            color: butNum === 4 ? "green" : "white"
            Text{
                anchors.fill: parent
                anchors.centerIn: parent
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                text:"Заглубление\n"+penentration
                font.family: fontLCD.name
                font.pixelSize: width/10

            }
            MouseArea{
                z:10
                anchors.fill: parent
                onClicked: {
                    butNum = 4
                }
            }

        }
        Rectangle{
            id:testField
            width:parent.width
            height:parent.height/6
            anchors.top: penentrationField.bottom
            anchors.topMargin: 0
            border.width: borderWidth
            color: butNum === 5 ? "green" : "white"
            Text{
                anchors.fill: parent
                anchors.centerIn: parent
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                text:"Тест"
                font.family: fontLCD.name
                font.pixelSize: width/10

            }
            MouseArea{
                z:10
                anchors.fill: parent
                onClicked: {
                    butNum = 5
                }
            }
        }
        Rectangle{
            id:noiseField
            width:parent.width
            height:parent.height/6
            anchors.top: testField.bottom
            anchors.topMargin: 0
            border.width: borderWidth
            color: butNum === 6 ? "green" : "white"
            Text{
                anchors.fill: parent
                anchors.centerIn: parent
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                text:"Шум"
                font.family: fontLCD.name
                font.pixelSize: width/10

            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    butNum = 6
                }
            }
        }
    }
    //field for show test,noise and input keyboard
    Rectangle{
        width:mainWin.width * 2/3
        height: mainWin.height
        x:settingsField.width
        y:0
    }

}
