import QtQuick 2.0

Row {
    spacing: 20
    Rectangle{
        color: "transparent"
        width: 1
        height: parent.height
    }

    Image{
        id: imageitem
        fillMode: Image.PreserveAspectFit
        height: parent.height
        source: "graphics/placeholder.png"
    }

    Image{
        id: imageitem1
        fillMode: Image.PreserveAspectFit
        height: parent.height

        source: "graphics/PlusButton.png"
    }

}

