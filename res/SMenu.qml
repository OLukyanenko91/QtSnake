import QtQuick 2.0

Item {
    MenuButton {
        buttonText: "PLAY"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: controlsButton.top
        anchors.bottomMargin: 10

        onClicked: hideMenuAnimation.start()
    }

    MenuButton {
        id: controlsButton
        buttonText: "CONTROLS"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: message.visible = true
    }

    MenuButton {
        buttonText: "EXIT"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: controlsButton.bottom
        anchors.topMargin: 10

        onClicked: Qt.exit(0)
    }
}
