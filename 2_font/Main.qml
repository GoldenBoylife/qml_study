import QtQuick

Window {
    width: 640; height: 480; visible: true ; title: qsTr("section2 font")
    // using ; , i can write 1 line.

    property string str : ""

    property var a : Qt.vector2d(1,2)
    property var b : Qt.vector2d(3,4)
    property int c : a.x + b.y

    Text{
        anchors.centerIn: parent
        font.pointSize: 15
        text : c.toString()

    }
    /*event handler: afterthe view is rendered, this will work.*/
    Component.onCompleted: {
        console.log("b value is ", c)
    }
}
