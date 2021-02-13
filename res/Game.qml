import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Snake")

    Rectangle {
        anchors.fill: parent
        focus: true

        Image {
            id: background
            anchors.fill: parent
            source: "qrc:/res/img/background.jpg"
        }

        Snake {
            id: snake
        }

        Apple {}

        Item {
            id: menu
            anchors.fill: parent
            opacity: 1

            Image {
                anchors.fill: parent
                source: "qrc:/res/img/menu_background2.jpg"
            }

            SMenu {
                anchors.fill: parent
            }

            MessageDialog {
                id: message
                title: "Controls"
                text: "123\n123\n123\n123"
            }

            SequentialAnimation {
                id: hideMenuAnimation

                NumberAnimation {
                    target: menu;
                    property: "opacity";
                    to: 0;
                    duration: 500
                }

                PropertyAction {
                    target: menu;
                    property: "visible";
                    value: 0;
                }
            }

            SequentialAnimation {
                id: showMenuAnimation

                PropertyAction {
                    target: menu;
                    property: "visible";
                    value: 1;
                }

                NumberAnimation {
                    target: menu;
                    property: "opacity";
                    to: 1;
                    duration: 500
                }
            }
        }

        //TEST
        Keys.onPressed: {
            if (event.key === Qt.Key_A) {
                snake.x -= 30;
                event.accepted = true;
            }
            else if (event.key === Qt.Key_D) {
                snake.x += 30;
                event.accepted = true;
            }
            else if (event.key === Qt.Key_W) {
                snake.y -= 30;
                event.accepted = true;
            }
            else if (event.key === Qt.Key_S) {
                snake.y += 30;
                event.accepted = true;
            }
            else if (event.key === Qt.Key_Escape) {
                showMenuAnimation.start();
                event.accepted = true;
            }
        }
    }
}
