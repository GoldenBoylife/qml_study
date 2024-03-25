import QtQuick



Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image{
        anchors.centerIn : parent
        //center
        source: "qrc:image/QtLogo.png"
        rotation: 45
        //angle 45
    }
}


