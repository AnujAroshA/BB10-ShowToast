import bb.cascades 1.0

Page {
    property alias toastMessage: mainMsgTxtFieldID.text;
    
    Container {
        layout: DockLayout { }

        ImageView {
            imageSource: "asset:///images/bg_image.jpg"
            verticalAlignment: VerticalAlignment.Fill
            horizontalAlignment: HorizontalAlignment.Fill
        }

        Container {
            layout: StackLayout { }

            Label {
                id: mainGreetLableId
                text: qsTr("Hello World")
                textStyle.base: SystemDefaults.TextStyles.BigText
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                objectName: "mainGreetLableObj"
            }

            TextField {
                id: mainMsgTxtFieldID
                objectName: "mainMsgTxtFieldObj"
                hintText: qsTr("Enter Message")
                textStyle.color: Color.DarkRed
                textStyle.textAlign: TextAlign.Center
            }
        }
  
        Button {
            id: mainToastBtnId
            text: "Show Toast"
            objectName: "mainToastBtnObj"
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            imageSource: "asset:///images/monkey_face.png"

            onClicked: {
                toastMessage = mainMsgTxtFieldID.text;
                app.showToast()
            }
        }
    }
}

