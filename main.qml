import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
Window {
    id: mainWin
    width:1980
    height: 1040
    visibility: "FullScreen"

    property int pageNow: 1
    function slidePages(){
        if(pageNow === 1)
            page2Show.start();
        else if(pageNow === 2 )
            memPageShow.start()
        else if(pageNow === 3)
            page1Show.start();

        pageNow++;
        if(pageNow>3)
            pageNow = 1;
    }

    Rectangle{
        id: rectangle1
        anchors.fill: parent
        border.width: 0

        //animations
        //open page1
        SequentialAnimation{
            id:page1Show
            ParallelAnimation{
                PropertyAnimation{
                    target:page1
                    properties: "anchors.rightMargin"
                    to: 0
                    duration:300
                }
                PropertyAnimation{
                    target:memPage
                    properties: "anchors.rightMargin"
                    to: -mainWin.width
                    duration:300
                }
            }
            ParallelAnimation{
                PropertyAnimation{
                    target:memPage
                    properties: "anchors.rightMargin"
                    to: mainWin.width
                    duration:0
                }
            }
         }
        //open page2
        SequentialAnimation{
            id:page2Show
            ParallelAnimation{
                PropertyAnimation{
                    target:page2
                    properties: "anchors.rightMargin"
                    to: 0
                    duration:300
                }
                PropertyAnimation{
                    target:page1
                    properties: "anchors.rightMargin"
                    to: -mainWin.width
                    duration:300
                }
            }
            ParallelAnimation{
                PropertyAnimation{
                    target:page1
                    properties: "anchors.rightMargin"
                    to: mainWin.width
                    duration:0
                }
            }
         }
        //open memory page
        SequentialAnimation{
            id:memPageShow
            ParallelAnimation{
                PropertyAnimation{
                    target:memPage
                    properties: "anchors.rightMargin"
                    to: 0
                    duration:300
                }
                PropertyAnimation{
                    target:page2
                    properties: "anchors.rightMargin"
                    to: -mainWin.width
                    duration:300
                }

            }
            ParallelAnimation{
                PropertyAnimation{
                    target:page2
                    properties: "anchors.rightMargin"
                    to: mainWin.width
                    duration:0
                }
            }
         }

                //informations fields
        Rectangle{
            id: pageNameField
            x:timeField.width+latitudeField.width+longirudeField.width+soundSpeedField.width
            y:0
            height: mainWin.height*0.10;
            width: mainWin.width-x
            border.width: 5
            border.color: "#9E9E9E"
            color :"white"
            Text{
                anchors.centerIn: parent
                text: pageNow
            }
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
// main page all echo signals
        Page1{
            id:page1
            anchors.right: parent.left
            anchors.rightMargin: 0
        }
        Page2{
            id: page2
            anchors.right: parent.left
            anchors.rightMargin: mainWin.width
        }
        MemPage{
            id:memPage
            anchors.right: parent.left
            anchors.rightMargin: mainWin.width
        }

        Button {
            id: button1
            height: mainWin.height*0.10
            width: mainWin.width*0.20
            x: 0
            y: mainWin.height-button1.height
            text: qsTr("Выбор\nстраницы")
            onClicked:{
                slidePages()
            }
        }
//depth scale
        Image {
            id: depthScaleImg
            x:mainWin.width - width
            width: mainWin.width*0.01
            y:mainWin.height - mainWin.height*0.90
            height: mainWin.height-mainWin.height*0.20
            source: "qrc:/res/scale.png"
        }
    }
}
