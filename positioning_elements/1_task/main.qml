import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640;
    height: 480;
    visible: true;
    title: qsTr("Frog")
    id:win
    Block{id: rect1; height: 80; width: 280; bcolor: "green"; anchors.centerIn: parent;
    Block{ height: 15; width: 25; bcolor: "pink"; anchors.leftMargin: 15;
        anchors.topMargin: 15; anchors.left: parent.left; anchors.top: parent.top;}
    Block{ height: 15; width: 25; bcolor: "pink"; anchors.rightMargin: 15;
        anchors.topMargin: 15;anchors.right: parent.right; anchors.top: parent.top;}}

    Block{id: rect2; height: 60; width: 170; bcolor: "green";
        anchors.horizontalCenter:parent.horizontalCenter; anchors.bottom: rect1.top}

    Block{id: rect3; height: 80; width: 80; bcolor: "black";
        anchors.bottom: rect1.top; anchors.right: rect2.left;
        Block {height: 40; width: 40; anchors.bottom: parent.bottom
            anchors.right: parent.right; anchors.rightMargin: 7; anchors.bottomMargin: 7;}}

    Block{id: rect4; height: 90; width: 90; bcolor: "black";
        anchors.bottom: rect1.top; anchors.left: rect2.right;
        Block { height: 50; width: 50; anchors.bottom: parent.bottom;
            anchors.left: parent.left; anchors.leftMargin: 7;anchors.bottomMargin: 7;}}

    Block{id: rect7; height: 60; width: 200; bcolor: "green";
        anchors.horizontalCenter:parent.horizontalCenter; anchors.top: rect1.bottom}

    Block{
        id:rect8; height: 60; width: 120; bcolor: "white";
        anchors.horizontalCenter:parent.horizontalCenter; anchors.top: rect7.bottom
        Block {height: 30; width: 30; bcolor: "green"; anchors.bottom:parent.bottom; anchors.left: parent.left}
        Block { height: 30; width: 30; bcolor: "green"; anchors.bottom:parent.bottom; anchors.right: parent.right}}

    Block{id:rect9; height: 60; width: 40; bcolor: "green"; //передняя левая лапа
        anchors.verticalCenter:rect8.verticalCenter; anchors.right: rect8.left}

    Block{id:rect10; height: 60; width: 40; bcolor: "green"; //передняя левая правая
        anchors.verticalCenter:rect8.verticalCenter; anchors.left: rect8.right}

    Block{id:rect13; height: 40; width: 50; bcolor: "green"; //задняя левая лапа до сгиба
        anchors.verticalCenter:rect7.verticalCenter; anchors.right: rect7.left}

    Block{id:rect14; height: 40; width: 50; bcolor: "green"; //задняя левая правая до сгиба
        anchors.verticalCenter:rect7.verticalCenter; anchors.left: rect7.right}

    Block{
        id:rect17; height: 50; width: 20; bcolor: "white";
        anchors.verticalCenter:rect9.verticalCenter; anchors.right: rect9.left;
        Block {height: 30; width: 80; bcolor: "green"; anchors.bottom: parent.bottom;anchors.right: parent.right}
    }
    Block{
        id:rect18; height: 50; width: 20; bcolor: "white";
        anchors.verticalCenter:rect10.verticalCenter; anchors.left: rect10.right
        Block {height: 30; width: 80; bcolor: "green"; anchors.bottom: parent.bottom;  anchors.left: parent.left}}

    Block{id:rect15; height: 60; width: 30; bcolor: "green";
        anchors.top: rect13.bottom; anchors.right: rect17.left}

    Block{id:rect16; height: 60; width: 30; bcolor: "green";
    anchors.top: rect14.bottom; anchors.left: rect18.right}



}

