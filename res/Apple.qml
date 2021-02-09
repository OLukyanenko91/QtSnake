import QtQuick 2.0

Image {
    width: 30
    height: 30
    source: "qrc:/res/img/Apple.png"

    Behavior on opacity {
        NumberAnimation { properties:"opacity"; duration: 200 }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            parent.opacity = !parent.opacity;
        }
    }
}

