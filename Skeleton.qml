import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
    width: 1920
    height: 1080
    color: "transparent"
    z: 1
    Row{
        anchors.fill: parent
        Rectangle{
            id:main
            width: parent.width*0.95
            height: parent.height
            z:2
            Column{
                anchors.fill: parent
                MenuHeader{
                    id: topMenu
                    height: parent.height/12
                    width: parent.width
                }
                ContentView{
                    id: contentView

                }


            }
        }
        FButtonMenu{
            id:fbuttons
            width: parent.width*0.05
            height: parent.height
            z:2
        }
    }
}


