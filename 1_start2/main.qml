import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MouseArea
    {
        anchors.fill:parent
        //parent: affects the whole

        /*when clicked, shutdown window*/
        onClicked: {
            Qt.quit();
        }
    }
    Text {
        text : qsTr("Hello World")
        anchors.centerIn: parent
    }
}

