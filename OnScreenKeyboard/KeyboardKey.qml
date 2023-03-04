import QtQuick 2.0

Rectangle {
  id : keyboardKey

  property string symbol: "S"
  color : "brown"

  width: 10
  height: 10

  Text {
    id : keySymbol
    color : "white"
    text: keyboardKey.symbol
  }

  MouseArea {
    anchors.fill: parent
    onClicked: {
      console.log("clicked")
    }
  }

}
