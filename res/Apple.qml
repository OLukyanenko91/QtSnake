import QtQuick 2.0

Image {
    width: 30
    height: 30
    source: "qrc:/res/img/Apple.png"

    Behavior on x {
        NumberAnimation { properties:"x"; duration: 200 }
    }
    Behavior on y {
        NumberAnimation { properties:"y"; duration: 200 }
    }

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

