import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        anchors.fill: parent
        focus: true

        Snake {}

        Apple { id: apple }

        //TEST
        Keys.onPressed: {
            if (event.key === Qt.Key_A) {
                apple.x -= 30;
                event.accepted = true;
            }
            else if (event.key === Qt.Key_D) {
                apple.x += 30;
                event.accepted = true;
            }
            else if (event.key === Qt.Key_W) {
                apple.y -= 30;
                event.accepted = true;
            }
            else if (event.key === Qt.Key_S) {
                apple.y += 30;
                event.accepted = true;
            }
        }
    }
}
