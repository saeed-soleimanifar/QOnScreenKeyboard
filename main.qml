import QtQuick 2.14
import QtQuick.Window 2.14

import "OnScreenKeyboard"

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    KeyboardPanel {
        anchors.centerIn: parent
    }
}
