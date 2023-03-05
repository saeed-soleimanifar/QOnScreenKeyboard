import QtQuick 2.0

Row {
  id: keyboardRow
  spacing: 5
  property  var keyList: []
  Repeater {
    model:keyboardRow.keyList
    delegate: KeyboardKey {
      symbol: modelData
    }
  }
}
