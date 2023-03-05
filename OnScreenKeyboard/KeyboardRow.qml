import QtQuick 2.0

Row {
  spacing: 5
  Repeater {
    model: ["Q","W", "R"]
    delegate: KeyboardKey {
      symbol: modelData
    }
  }
}
