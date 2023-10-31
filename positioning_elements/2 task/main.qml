import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Layout")
    Block{
        id:h
        bcolor: "lightgrey"
        width: parent.width
        height: parent.height/9
        anchors.top: parent.top
        btext: "Header"
    }
    Block{
        id:cont
        have_border: true
        bcolor: "white"
        width: parent.width
        height: (parent.height/9)*7
        anchors.top: h.bottom
        anchors.bottom: f2.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 15
        btext: "Content"
    }
    Block{
        id:f1
        bcolor: "lightgrey"
        width: parent.width/3
        height: parent.height/9
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        btext: "1"

    }
    Block{
        id:f2
        bcolor: "lightgrey"
        width: f1.width
        height: f1.height
        anchors.bottom: parent.bottom
        anchors.left: f1.right
        anchors.right: f3.left
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        btext: "2"
    }
    Block{
        id:f3
        bcolor: "lightgrey"
        width: f1.width
        height: f1.height
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        btext: "3"

    }
}
