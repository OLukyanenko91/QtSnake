import QtQuick 2.0

Item {
    MenuButton {
        buttonText: "PLAY"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: controlsButton.top
        anchors.bottomMargin: 10
    }

    MenuButton {
        id: controlsButton
        buttonText: "CONTROLS"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    MenuButton {
        buttonText: "EXIT"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: controlsButton.bottom
        anchors.topMargin: 10
    }
}
