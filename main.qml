import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
Window {
    id: mainWin
    width:1980
    height: 1040
    visibility: "FullScreen"
    property string butString: ""
    property bool pageVisible: true
    property int borderWidth:5
    FontLoader { id: fontLCD; source: "res/a_LCDNovaObl.ttf" }
    Canvas{

    }

    Rectangle{

        //animation
     SequentialAnimation{
         id:openSettings
         PropertyAnimation{
             target:settings
             property: "visible"
             to: true
             duration:0
         }
         PropertyAnimation{
             target:echoPages
             property: "visible"
             to:false
             duration:0
         }
            ParallelAnimation{
                PropertyAnimation{
                    target: echoPages
                    property: "opacity"
                    to:0
                    duration: 200
                }
                PropertyAnimation{
                    target: settings
                    property: "opacity"
                    to:1
                    duration: 200
                }
            }

    }
     SequentialAnimation{
         id:openPages
         PropertyAnimation{
             target:echoPages
             property: "visible"
             to:true
             duration:0
         }
         PropertyAnimation{
             target:settings
             property: "visible"
             to:false
             duration:0
         }
            ParallelAnimation{
                PropertyAnimation{
                    target: echoPages
                    property: "opacity"
                    to:1
                    duration: 200
                }
                PropertyAnimation{
                    target: settings
                    property: "opacity"
                    to:0
                    duration: 200
                }
            }

     }


        anchors.fill: parent

        EchoPages{
            id:echoPages
            opacity: 1
            anchors.fill: parent
        }
        Settings{
            id: settings
            anchors.fill: parent
            opacity: 0
            visible: false
        }
    }

    Button {
        property string butName: "Настройки"
        id: button1
        height: mainWin.height*0.10
        width: mainWin.width*0.20
        x: mainWin.width - width
        y: mainWin.height - height

        style:ButtonStyle{
            label:Label{
                id: butLabel
            font.family: fontLCD.name
            font.pixelSize: width/8
            horizontalAlignment:TextInput.AlignHCenter
            verticalAlignment: TextInput.AlignVCenter
            text: button1.butName
            }
        }
        onClicked: {
            pageVisible === true ? butName = "Страницы" : butName ="Настройки"
            pageVisible === true ? openSettings.start() : openPages.start()
            pageVisible =! pageVisible
        }
    }
}
