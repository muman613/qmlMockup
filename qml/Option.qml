import QtQuick 2.0
import QtQuick.Controls 1.4


Row {
    id: container

    property alias title: optionTitle.text

    anchors.horizontalCenter: parent.horizontalCenter

    signal checked(bool v)

    spacing: 16

    Text {
        id: optionTitle
        width: 128
        horizontalAlignment: Text.AlignRight
        text: "Title"
    }

    Switch {
        id: optionSwitch
        onCheckedChanged: {
            container.checked(checked)
        }
    }

    Text {
        id: optionState
        width: 80
        text: optionSwitch.checked ? "On" : "Off"
    }
}

