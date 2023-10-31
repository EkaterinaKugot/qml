import QtQuick 2.15

Item {
    property alias bcolor: rect.color
    Rectangle {
        id:rect
        anchors.fill: parent
    }
}
