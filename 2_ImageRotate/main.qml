import QtQuick 2.9
//if you want to use the lastest version, you dont't need to use numbers
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image{
        anchors.centerIn : parent
        //center
        source: "qrc:/QtLogo.png"
        rotation: 45
    }
}
