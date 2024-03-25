import QtQuick

Window {
    width: 480
    height: 360
    visible: true
    color: "#D8D8D8"
    title: qsTr("section1_image")


    Image{
        id: logo
        x: (parent.width -width)/2
        y: 40
        // anchors.centerIn: parent
        source:"qrc:/QtLogo.png"
        rotation: 45

    }

    Text {
        y : logo.y + logo.height+20
        x : (parent.width)/2
        width: window1.width
        //? root?
        horizontalAlignment: Text.AlignHCenter
        text: 'Qt honey'
    }
}
