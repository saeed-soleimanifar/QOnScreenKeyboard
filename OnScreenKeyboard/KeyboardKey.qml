import QtQuick 2.14
import QtGraphicalEffects 1.14
import QtQml 2.14

Rectangle {
  id : keyboardKey

  property string symbol: "S"
  color : "black"
  border.color: keyboardKey.color
  border.width: 1
  width: 50
  height: 50


  radius: keyboardKey.width * 0.25
  gradient : mouseArea.pressed ?  d.pressGradient : d.normalGradient
  layer.enabled: true
  layer.effect: DropShadow {
    radius: keyboardKey.radius / 2
    x: keyboardKey.width / 2
    y: keyboardKey.height / 2
    color: "#80000000"
  }

  Text {
    id : keySymbol
    color : "white"
    text: keyboardKey.symbol
    anchors.fill: parent
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    Binding on scale  {
      when: mouseArea.pressed
      restoreMode: Binding.RestoreValue
      value : 1.5
    }
  }

  MouseArea {
    id : mouseArea
    anchors.fill: parent
    onClicked: {
      console.log("clicked")
    }
  }

  QtObject {
    id:d
    property Gradient pressGradient: Gradient {
      GradientStop {position: 0.0; color:"transparent"}
      GradientStop {position: 0.2; color:keyboardKey.color}
      GradientStop {position: 0.8; color:keyboardKey.color}
      GradientStop {position: 1.0; color:"transparent"}
    }

    property Gradient normalGradient: Gradient {
      GradientStop {position: 0.0; color:"transparent"}
      GradientStop {position: 0.1; color:keyboardKey.color}
      GradientStop {position: 0.9; color:keyboardKey.color}
      GradientStop {position: 1.0; color:"transparent"}
    }
  }
}
