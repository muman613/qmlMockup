import QtQuick 2.0

Item {
    id: container

    property alias source: iconImage.source
    width: 32
    height: 32

    signal clicked

    Text {
        id: iconText
        visible: false
    }

    Image {
        width: parent.width
        height: parent.height

        anchors.centerIn: parent
        id: iconImage
        source: "../images/Gear-White.svg"
    }

    MouseArea {
        anchors.fill: parent;
        onClicked: {
            container.clicked()
        }
    }
}
