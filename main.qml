import QtQuick 2.0

Item {
    width: 480
    height: 320

    Rectangle {
        id: green
        color: "green"
        height: 500
        width: 500
        opacity: 1.0

        Rectangle {
            color: "blue"
            height: 50
            width: 50
            opacity: 0.5
        }
        Rectangle {
            color: "blue"
            height: 50
            width: 50
            opacity: 0.5
        }
        Rectangle {
            color: "blue"
            height: 50
            width: 50
            opacity: 0.5
        }
        Rectangle {
            color: "blue"
            height: 50
            width: 50
            opacity: 0.5
        }
        Rectangle {
            color: "blue"
            height: 50
            width: 50
            opacity: 0.5
        }
    }

    Rectangle {
        color: "red"
        height: 50
        width: 50
        opacity: 0.5

        MouseArea {
            anchors.fill: parent
            onClicked: green.opacity = (green.opacity == 1.0 ? 0.0 : 1.0)
        }
    }

    Image {
        id: root
        sourceSize.width: parent.width
        sourceSize.height: parent.height
        anchors.centerIn: parent
//        fillMode: Image.PreserveAspectCrop

        Component.onCompleted: {
            height = parent.height / 10
            width = parent.width / 10
        }

        source: "wallpaper.jpg"

        SequentialAnimation {
            running: true
            loops: Animation.Infinite

            NumberAnimation {
                target: root
                property: "scale"
                from: 0.5
                to: 4.0
                duration: 3000
            }

            NumberAnimation {
                target: root
                property: "scale"
                from: 4.0
                to: 0.5
                duration: 1000
            }
        }
        NumberAnimation on rotation {
            id: rAnim
            from: 0
            to: 360
            duration: 5000
            loops: Animation.Infinite
        }
    }

    FPSMonitor {
        anchors.top: parent.top
        anchors.left: parent.left
    }
}
