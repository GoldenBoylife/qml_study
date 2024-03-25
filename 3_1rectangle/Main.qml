import QtQuick

Window {
    width: 400
    height: 400
    visible: true
    title: qsTr("Rectangle example")

    /*Total 5 Rectangle */
    Rectangle {
        width: parent.width;
        height: parent.height
        color: "gray"

        Rectangle {
            x:50; y:50;width: 300; height: 150
            color:"lightblue"
            Rectangle {
                x:50;y:50; width:150; height: 150; color: "white"
                AnimatedImage
                {
                    id : animation
                    x: 10; y:10 ; width: 100 ; height : 100
                    source : "qrc:/image/img.gif"

                }
                MouseArea
                {
                    anchors.fill: parent
                    /*when clicked */
                    onClicked: {
                        if(animation.paused == true)
                        {
                            animation.paused = false
                            //animation play
                        } else {
                            animation.paused = true
                            //animation paused.
                        }

                    }
                }
            }
        }
        Rectangle {
            x:50;y:200;width: 300; height: 150
            color: "green"

            Rectangle {
                x:100; y:50; width: 150; height: 80
                color: "blue"
                Image {
                    x:10;  y:10 ; width :50 ; height : 50
                    source : "qrc:/image/QtLogo.png"
                }
            }
        }
    }
}
