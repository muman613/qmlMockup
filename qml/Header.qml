import QtQuick 2.0

Item {
    id: container
    x: 0
    y: 0
    width: parent.width
    height: 36

    property alias title: headerText.text
    property alias textColor: headerText.color

    signal clicked

    Rectangle {
        anchors.fill: parent
        color: "#808080"
    }

    Text {
        id: headerText
        anchors.centerIn: parent
        text: qsTr("Header")
        color: "yellow"

    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            container.clicked()
        }
    }
}
