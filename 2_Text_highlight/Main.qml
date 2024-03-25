import QtQuick

Window {
    width: 320
    height: 150
    visible: true
    title: qsTr("[tab] key example")

    Text {
        id: firstLabel ; x :24; y:16

        property int times : 24
        property alias aliasTimes : firstLabel.times
        //aliasties has component
        //firstLabel.times's another name is aliasTimes.


        text: "hi " + aliasTimes
        font.pixelSize: 24
        focus: true
        //keyboard focus
        color: focus ? "red" : "black"

        KeyNavigation.tab : secondLabel
    }

    Text {
        id : secondLabel;  x:24; y:64

        text: "Hello world"
        font.pixelSize: 24
        focus: false
        color: focus ? "red" : "black"

        KeyNavigation.tab : firstLabel
    }


}
