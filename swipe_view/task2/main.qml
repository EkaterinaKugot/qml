import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 320
    height: 480
    visible: true
    title: qsTr("Swipe_View2")

    Rectangle {
        width: 320
        height: 300
        color: "transparent"
        anchors.centerIn: parent

        SwipeView {
            id: view
            interactive: SwipeView.ForceElasticity
            currentIndex: 1
            anchors.fill: parent

            Page {
                background : Rectangle {
                    color : 'red'
                }
            }
            Page {
                background : Rectangle {
                    color : 'yellow'
                }
            }
            Page {
                background : Rectangle {
                    color : 'green'
                }
            }

        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
