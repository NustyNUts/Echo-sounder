import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
Window {
    id: mainWin
    width:1980
    height: 1040
    visibility: "FullScreen"
    property string butString: ""
    property bool pageVisible: true
    property int borderWidth:5
    Rectangle{
        //animation

            ParallelAnimation{
                id:openSettings
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
            ParallelAnimation{
                id:openPages
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
        }
    }

    Button {
        id: button1
        height: mainWin.height*0.10
        width: mainWin.width*0.20
        x: mainWin.width - width
        y: mainWin.height - height
        text: "Settings"
        onClicked: {
            pageVisible === true ? text = "Pages" : text ="Settings"
            pageVisible === true ? openSettings.start() : openPages.start()
            pageVisible =! pageVisible
        }
    }
}
