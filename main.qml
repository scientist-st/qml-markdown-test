import QtQuick 2.11
import QtQuick.Window 2.11

Window {
  visible: true
  width: 800;
  height: 600;
  title: qsTr("Hello World")

  TextEdit {
    id: mdInput
    anchors.top: parent.top;
    anchors.left: parent.left;
    anchors.bottom: parent.bottom;
    width: parent.width/2 - anchors.margins;
    anchors.margins: 4
    Rectangle {
      color: "lightgray";
      anchors.fill: parent;
      z: parent.z-1
    }
  }

  Text {
    textFormat: Text.MarkdownText
    anchors.top: parent.top;
    anchors.right: parent.right;
    anchors.bottom: parent.bottom;
    width: parent.width/2 - anchors.margins;
    anchors.margins: 4
    text: mdInput.text
  }

}
