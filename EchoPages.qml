import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1


Rectangle{
    id: rectangle1
    anchors.fill: parent
    property string pageName: "Все эхосигналы"
    property int pageNow: 1

    function slidePages(){
        if(pageNow === 1)
        {
            page2Show.start();
            pageName = "Kоррелированый\nэхо сигнал";
        }
        else if(pageNow === 2 )
        {
            memPageShow.start();
            pageName = "Просмотр памяти";
        }
        else if(pageNow === 3)
        {
            pageName = "Все эхосигналы";
            page1Show.start();
        }

        pageNow++;
        if(pageNow>3)
            pageNow = 1;
    }

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
        border.width: borderWidth
        border.color: "#9E9E9E"
        color :"white"
        Text{
            anchors.fill: parent
            font.family: fontLCD.name
            font.pixelSize: width/10
            text: pageName
            horizontalAlignment: TextInput.AlignHCenter
            verticalAlignment: TextInput.AlignVCenter

        }
    }
    Rectangle{
            id: timeField
            x:0
            y:0
            height: mainWin.height*0.10;
            width: mainWin.width*0.25
            border.width: borderWidth
            border.color: "#9E9E9E"
            color :"white"
            Text{
                anchors.fill: parent
                text: currentTime
                font.family: fontLCD.name
                font.pixelSize: width/5
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
            }
        }
        Rectangle{
            id: latitudeField
            x:timeField.width
            y:0
            height: mainWin.height*0.10;
            width: mainWin.width*0.20
            border.width: borderWidth
            border.color: "#9E9E9E"
            color :"white"
            Text{
                anchors.fill: parent
                text: latitude
                font.family: fontLCD.name
                font.pixelSize: width/6
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
            }
        }
        Rectangle{
            id: longirudeField
            x:timeField.width+latitudeField.width
            y:0
            height: mainWin.height*0.10;
            width: mainWin.width*0.20
            border.width: borderWidth
            border.color: "#9E9E9E"
            color :"white"
            Text{
                anchors.fill: parent
                text: longitude
                font.family: fontLCD.name
                font.pixelSize: width/6
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
            }
        }
        Rectangle{
            id: soundSpeedField
            x:timeField.width+latitudeField.width+longirudeField.width
            y:0
            height: mainWin.height*0.10;
            width: mainWin.width*0.20
            border.width: borderWidth
            border.color: "#9E9E9E"
            color :"white"
            Text{
                anchors.fill: parent
                text: "Ск. звука: "+soundSpeed+" м/с"
                font.family: fontLCD.name
                font.pixelSize: width/10
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
            }
        }
// main page, all echo signals
    Page1{
        id:page1
        anchors.right: parent.left
        anchors.rightMargin: 0
    }
    //second page, corellated echo signals
    Page2{
        id: page2
        anchors.right: parent.left
        anchors.rightMargin: mainWin.width
    }
    //memory
    MemPage{
        id:memPage
        anchors.right: parent.left
        anchors.rightMargin: mainWin.width
    }
    // slede to next page button
    Button {
        id: button1
        height: mainWin.height*0.10
        width: mainWin.width*0.20
        x: 0
        y: mainWin.height-button1.height
        style:ButtonStyle{
            label:Label{
            font.family: fontLCD.name
            font.pixelSize: width/8
            horizontalAlignment:TextInput.AlignHCenter
            verticalAlignment: TextInput.AlignVCenter
            text: qsTr("Выбор\nстраницы")
            }
        }


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
