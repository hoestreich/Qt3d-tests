import QtQuick 2.4
import QtQuick.Scene3D 2.0

Rectangle{
    id: contentView
    height: parent.height/12*11
    width: parent.width
    border.width: 1
    color: "transparent"

    Scene3D{
        id: scene3d
        anchors.fill: parent
        focus: true
        aspects: "input"
        WorkpieceView{
            id: workpieceview3d
        }

    }
}
