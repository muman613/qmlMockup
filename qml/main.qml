import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480

    minimumWidth: 320
    minimumHeight: 240

    title: qsTr("Hello World")

    color: "lightblue"
    Header {
        id: mainHeader
        title: "Main Application"
        textColor: "white"
        onClicked: {
            console.log("Header clicked")
        }
    }

    Column {
        spacing: 16
        anchors.centerIn: parent

        Option {
            title: "Enable DHCP"
        }
        Option {
            title: "Network Scan"
        }
        Option {
            title: "INT Inhibit"
        }

        Option {
            title: "Disable Header"
            onChecked: {
                mainHeader.visible = !v
            }
        }

        Option {
            title: "Disable Footer"
            onChecked: {
                mainFooter.visible = !v
            }
        }
    }


    Footer {
        id: mainFooter
        title: "Main Footer"
        textColor: "orange"
        onClicked: {
            console.log("Footer clicked")
        }
    }
}
