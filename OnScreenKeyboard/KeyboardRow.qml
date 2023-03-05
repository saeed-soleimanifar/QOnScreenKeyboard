import QtQuick 2.0

Row {
  id: keyboardRow
  spacing: 5
  property  var keyList: []
  property alias rowHeight: keyboardRow.height
  Repeater {
    model:keyboardRow.keyList
    delegate: KeyboardKey {
      symbol: modelData
      height: keyboardRow.rowHeight
    }
  }
}
