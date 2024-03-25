import QtQuick

Window {
    width: 512
    height: 320
    visible: true
    title: qsTr("1_windmill")
    id : root

    property bool condition : false



    property int rotStep:45

    BorderImage {
        source: "qrc:/images/background.png"
    }

    Image{
        id: pole
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom

        source:"qrc:/images/pole.png"
    }
    Image{
        id: wheel
        anchors.centerIn: parent
        source : "qrc:/images/pinwheel.png"
        Behavior on rotation
        {
            NumberAnimation{
                duration : 250
                //rotate picture 360' during 250sec
            }
        }

        MouseArea {
            anchors.fill: parent
            enabled: !condition
            //action Active
            onPressed: {
                console.log(1);
                wheel.rotation += 90
            }
        }
        Item{
            anchors.fill:parent
            focus: true
            enabled: !condition
            Keys.onLeftPressed: {
                console.log("move left")
                wheel.rotation -=root.rotStep
            }
            Keys.onRightPressed: {
                console.log("move right")
                wheel.rotation +=root.rotStep
            }

        }


    }



}
