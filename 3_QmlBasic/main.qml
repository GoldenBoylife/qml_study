import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 512
    height: 320
    title: qsTr("Windmill")
    id: root

    BorderImage {
        source : "qrc:/images/background.png"
    }
    Image {
        id : pole
        anchors.horizontalCenter: parent.horizontalCenter
        //set center of layout
        anchors.bottom: parent.bottom
        source:"qrc:/images/pole.png"
    }

    Image {
        id: wheel
        anchors.centerIn: parent
        source: "qrc:/images/pinwheel.png"
        Behavior on rotation {
            NumberAnimation{
                duration:250

            }
        }
        MouseArea {
            anchors.fill:parent
            //set image tile as mouse area
            onPressed: {
                wheel.rotation += 90
            }
        }
    }
}
