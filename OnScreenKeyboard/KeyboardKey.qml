import QtQuick 2.0

Rectangle {
  id : keyboardKey

  property string symbol: "S"
  color : "brown"

  width: 25
  height: 25

  Text {
    id : keySymbol
    color : "white"
    text: keyboardKey.symbol
    anchors.fill: parent
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
  }

  MouseArea {
    anchors.fill: parent
    onClicked: {
      console.log("clicked")
    }
  }

}
