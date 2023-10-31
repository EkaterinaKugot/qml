import QtQuick 2.15

Item {
    property alias bcolor: rect.color
    property alias btext: txt.text

    property bool have_border: false
    Rectangle {
        id:rect
        border.width: have_border ? 1:0
        border.color: have_border ? "grey":"white"
        anchors.fill: parent
        Text{
            id: txt
            anchors.centerIn: parent
        }
    }
}
