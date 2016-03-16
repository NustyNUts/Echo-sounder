import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
Window {
    id: mainWin
    width:1980
    height: 1040
    visibility: "FullScreen"
    color:"blue"
    Rectangle{
        Page1{
            anchors.fill: parent
        }
    }

    Button {
        id: button1
        height: mainWin.height*0.10
        width: mainWin.width*0.20
        x: 0
        y: parent.height-height
        text: qsTr("Выбор\nстраницы")
    }

    Image {
        id: image1
        x:mainWin.width - width
        width: mainWin.width*0.01
        y:mainWin.height - mainWin.height*0.90+5
        height: mainWin.height-mainWin.height*0.20-10
        source: "qrc:/res/scale.png"
    }

}
