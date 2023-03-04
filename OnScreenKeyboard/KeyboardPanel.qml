import QtQuick 2.0

Rectangle {
    id : keyboardPanel
    width: 500
    height: 400

    border.color: "black"
    border.width: 2
    color: "gray"

    property int previewHeight: 80

    Rectangle {
      id: previewSection
      width: parent.width
      height: keyboardPanel.previewHeight
      anchors.top: parent.top
      anchors.left: parent.left
      border.color: "green"
      border.width: 1
    }

    Rectangle {
      id: keySection
      width: parent.width
      height: keyboardPanel.height - previewSection.height
      anchors.top : previewSection.bottom
      anchors.left: parent.left
      border.color: "blue"
      border.width: 1
    }
}
