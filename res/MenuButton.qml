import QtQuick 2.0
import QtQuick.Controls 2.15

Button {
    id: menuButton
    property string buttonText: ""
    property int rotationValue: 0

    contentItem: Text {
        text: buttonText
        font.family: "Comic Sans MS"; font.bold: true; font.pointSize: 25;
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        id: background
        implicitWidth: 300
        implicitHeight: 80
        border.color: "forestgreen"
        border.width: 4

        radius: 40
        gradient: Gradient {
            GradientStop {
                position: 0.0;
                color: "darkgreen";
            }
            GradientStop {
                position: 0.1;
                color: "lawngreen";
            }
            GradientStop {
                position: 0.9;
                color: "green";
            }
            GradientStop {
                position: 1.00;
                color: "limegreen";
            }
        }

        Behavior on radius {
            NumberAnimation { duration: 200 }
        }
    }

    SequentialAnimation {
        id: pushAnimation

        NumberAnimation {
            target: menuButton;
            property: "rotation";
            to: rotationValue;
            duration: 50
        }

        NumberAnimation {
            target: menuButton;
            property: "rotation";
            to: 0;
            duration: 50
        }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onEntered: {
            contentItem.color = "lavender";
            background.border.color = "limegreen";
            background.radius = 30;
        }
        onExited: {
            contentItem.color = "white"
            background.border.color = "forestgreen";
            background.radius = 40;
        }
        onPressed: {
            rotationValue = Math.random() < 0.5 ? -3 : 3;
            pushAnimation.start();
            parent.clicked();
        }
    }
}
