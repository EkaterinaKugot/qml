import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 360
     height: 640
     visible: true
     title: qsTr("StackView_test")

     property int defMargin:10

     StackView{
         id:stack_view
         anchors.fill: parent
         initialItem: page1
     }
     MyPage { id:page1
          bg: "red"
          btext1: "To_Green"
          btext2: "To_Yellow"
          onButtonClicked1: {
            stack_view.replace(page1, page2)
          }
          onButtonClicked2: {
            stack_view.replace(page1, page3)
          }
      }
      MyPage { id:page2
          visible: false
          bg: "green"
          btext1: "To_Yellow"
          btext2: "To_Red"
          onButtonClicked1: {
            stack_view.replace(page2, page3)
          }
          onButtonClicked2: {
            stack_view.replace(page2, page1)
          }
      }
      MyPage { id:page3
          visible: false
          bg: "yellow"
          btext1: "To_Red"
          btext2: "To_Green"
          onButtonClicked1: {
            stack_view.replace(page3, page1)
          }
          onButtonClicked2: {
            stack_view.replace(page3, page2)
          }
      }
}
