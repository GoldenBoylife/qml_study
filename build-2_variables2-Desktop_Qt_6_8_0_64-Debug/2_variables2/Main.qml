import QtQuick

Window {
    width: 320
    height: 240
    visible: true
    title: qsTr("2_variable")
    id : root

    property int aValue : 10
    property int bValue : 20
    property var aRect : Qt.rect(10,20,30,40)
                            //param : rect(x,y,w,h)

    Text{
        id : id_values
        x: parent.width/2- 50
        y: parent.height/2 -50
        font.pointSize: 25
        text: aRect.x + "+" + aRect.y
    }

    Text{
        id : id_sum
        // anchors.centerIn : parent
        x : parent.width/2 -50
        y : parent.height/2
        property int sum : aRect.width +aRect.height
        font.pointSize: 15
        // sum : aValue + bValue
        text : "sum : " +sum
    }
    Text {
        x : parent.width/2
        y: parent.height/2+30
        anchors.centerIn : parent
        font.pointSize : 15
        text : Qt.formatDateTime(new Date(),"yyyy,MM,dd hh:mm:ss")
    }



}
