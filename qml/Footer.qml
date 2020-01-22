import QtQuick 2.0

Item {
    id: container
    x: 0
    y: parent.height - 36
    width: parent.width
    height: 36

    property alias textColor: footerText.color
    property alias title: footerText.text

    signal clicked

    Rectangle {
        anchors.fill: parent
        color: "#505050"
    }

    Text {
        id: footerText
        anchors.centerIn: parent
        text: qsTr("Footer")
        color: "yellow"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            container.clicked()
        }
    }

    Icon {
        id: settingIcon
        x: 8
        y: parent.height - 34
        onClicked: {
            console.log("Icon clicked")
        }
    }
}
