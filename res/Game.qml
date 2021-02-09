import QtQuick 2.12
import QtQuick.Window 2.12

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
            anchors.fill: parent

            Image {
                anchors.fill: parent
                source: "qrc:/res/img/menu_background2.jpg"
            }

            SMenu {
                anchors.fill: parent
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
        }
    }
}
