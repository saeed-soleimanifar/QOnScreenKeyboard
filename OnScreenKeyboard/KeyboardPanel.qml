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
      Column {
        id: keyboardRows
        width: keySection.width
        height: keySection.height
        spacing: 5

        property int numberOfRows: children.length

        function updateRowHeights() {
          var availableHeight = keySection.height - (keyboardRows.spacing * (numberOfRows - 1));
          var rowHeight = availableHeight / numberOfRows;
          for (var i = 0; i < numberOfRows; i++) {
              keyboardRows.children[i].rowHeight = rowHeight;
          }
        }

        KeyboardRow {
          keyList: ["Q", "W", "R","Q", "W", "R","Q", "W", "R","Q", "W", "R"]
        }
        KeyboardRow {
          keyList: ["A", "S", "D"]
        }
        KeyboardRow {
          keyList: ["A", "S", "D"]
        }
        KeyboardRow {
          keyList: ["A", "S", "D"]
        }
        KeyboardRow {
          keyList: ["A", "S", "D"]
        }
        KeyboardRow {
          keyList: ["A", "S", "D"]
        }
        KeyboardRow {
          keyList: ["A", "S", "D"]
        }

        Component.onCompleted: updateRowHeights()
        onNumberOfRowsChanged: updateRowHeights()

      }
    }
}
