import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MouseArea{
        anchors.fill:parent
        //parent: It affects all area
        onClicked: {
        //when Clicked
          Qt.quit()
        }
    }
    Text {
        text: "Hello world"
        anchors.centerIn: parent
        //position
    }
}
