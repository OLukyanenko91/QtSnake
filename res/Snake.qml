import QtQuick 2.0

Image {
    width: 30
    height: 30
    rotation: 90
    source: "qrc:/res/img/head.png"

    // TEST
    Behavior on x {
        NumberAnimation { properties:"x"; duration: 200 }
    }
    Behavior on y {
        NumberAnimation { properties:"y"; duration: 200 }
    }

    Behavior on opacity {
        NumberAnimation { properties:"opacity"; duration: 200 }
    }
}
