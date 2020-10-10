/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12
import QtQuick.Window 2.0

ApplicationWindow {
    id: window
    width: 1280
    height: 720
    minimumWidth: 1180
    minimumHeight: 663
    visible: true
    color: "#000000"
    title: "Qt Quick Controls 2 - Imagine Style Example: Automotive"

    readonly property color colorGlow: "#1d6d64"
    readonly property color colorWarning: "#d5232f"
    readonly property color colorMain: "#6affcd"
    readonly property color colorBright: "#ffffff"
    readonly property color colorLightGrey: "#888"
    readonly property color colorDarkGrey: "#333"

    readonly property int fontSizeExtraSmall: Qt.application.font.pixelSize * 0.8
    readonly property int fontSizeMedium: Qt.application.font.pixelSize * 1.5
    readonly property int fontSizeLarge: Qt.application.font.pixelSize * 2
    readonly property int fontSizeExtraLarge: Qt.application.font.pixelSize * 5

    Component.onCompleted: {
        x = Screen.width / 2 - width / 2
        y = Screen.height / 2 - height / 2
    }

    Shortcut {
        sequence: "Ctrl+Q"
        onActivated: Qt.quit()
    }

    Frame {
        id: frame
        anchors.fill: parent
        anchors.margins: 90
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0

        RowLayout {
            id: mainRowLayout
            width: 1024
            height: 768
            anchors.fill: parent
            anchors.margins: 24
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            spacing: 0

            StackLayout {
                width: 300
                height: 652
                Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                Layout.topMargin: 24
                Layout.margins: 24
                currentIndex: 1
                Layout.preferredHeight: 0
                Layout.fillHeight: true

                Layout.preferredWidth: 300
                Layout.maximumWidth: 300
                Layout.fillWidth: true

                Item {}

                ColumnLayout {
                    width: 300
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.fillWidth: true
                    spacing: 16

                    ButtonGroup {
                        id: viewButtonGroup
                        buttons: viewTypeRowLayout.children
                    }

                    GlowingLabel {
                        text: qsTr("VOLUME")
                        color: "white"
                        font.pixelSize: fontSizeMedium
                    }

                    Dial {
                        id: volumeDial
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        from: 0
                        value: 42
                        to: 100
                        stepSize: 1

                        Layout.minimumWidth: 64
                        Layout.minimumHeight: 64
                        Layout.preferredWidth: 128
                        Layout.preferredHeight: 128
                        Layout.maximumWidth: 128
                        Layout.maximumHeight: 128
                        Layout.fillHeight: true

                        Label {
                            text: volumeDial.value.toFixed(0)
                            color: "white"
                            font.pixelSize: Qt.application.font.pixelSize * 3
                            anchors.centerIn: parent
                        }
                    }

                    ButtonGroup {
                        id: audioSourceButtonGroup
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        Layout.topMargin: 16

                        GlowingLabel {
                            id: radioOption
                            text: qsTr("Music")
                            color: "white"
                            font.pixelSize: fontSizeMedium
                            horizontalAlignment: Label.AlignLeft

                            Layout.fillWidth: true
                        }
                        GlowingLabel {
                            id: glowingLabel
                            text: "Bluetooth"
                            horizontalAlignment: Label.AlignRight
                            font.pixelSize: fontSizeMedium * 0.8
                            glowEnabled: false

                            Layout.fillWidth: false
                        }
                    }

                    Frame {
                        id: stationFrame
                        leftPadding: 1
                        rightPadding: 1
                        topPadding: 1
                        bottomPadding: 1

                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.preferredHeight: 128

                        ListView {
                            id: stationListView
                            width: 236
                            clip: true
                            anchors.fill: parent

                            ScrollIndicator.vertical: ScrollIndicator {
                                parent: stationFrame
                                anchors.top: parent.top
                                anchors.right: parent.right
                                anchors.rightMargin: 1
                                anchors.bottom: parent.bottom
                            }

                            model: ListModel {
                                ListElement { name: "V-Radio"; frequency: "105.5 MHz" }
                                ListElement { name: "World News"; frequency: "93.4 MHz" }
                                ListElement { name: "TekStep FM"; frequency: "95.0 MHz" }
                                ListElement { name: "Classic Radio"; frequency: "89.9 MHz" }
                                ListElement { name: "Buena Vista FM"; frequency: "100.8 MHz" }
                                ListElement { name: "Drive-by Radio"; frequency: "99.1 MHz" }
                                ListElement { name: "Unknown #1"; frequency: "104.5 MHz" }
                                ListElement { name: "Unknown #2"; frequency: "91.2 MHz" }
                                ListElement { name: "Unknown #3"; frequency: "93.8 MHz" }
                                ListElement { name: "Unknown #4"; frequency: "80.4 MHz" }
                                ListElement { name: "Unknown #5"; frequency: "101.1 MHz" }
                                ListElement { name: "Unknown #6"; frequency: "92.2 MHz" }
                            }
                            delegate: ItemDelegate {
                                id: stationDelegate
                                width: stationListView.width
                                height: 22
                                text: model.name
                                font.pixelSize: fontSizeExtraSmall
                                topPadding: 0
                                bottomPadding: 0

                                contentItem: RowLayout {
                                    Label {
                                        text: model.name
                                        font: stationDelegate.font
                                        horizontalAlignment: Text.AlignLeft
                                        Layout.fillWidth: true
                                    }
                                    Label {
                                        text: model.frequency
                                        font: stationDelegate.font
                                        horizontalAlignment: Text.AlignRight
                                        Layout.fillWidth: true
                                    }
                                }
                            }
                        }
                    }

                    Frame {
                        Layout.fillWidth: true

                        RowLayout {
                            width: 236
                            anchors.fill: parent
                            anchors.rightMargin: 0
                            clip: true

                            Label {
                                text: qsTr("Sort by:")
                                font.pixelSize: fontSizeExtraSmall

                                Layout.alignment: Qt.AlignTop
                            }

                            ColumnLayout {
                                x: 120
                                RadioButton {
                                    text: qsTr("Name")
                                    font.pixelSize: fontSizeExtraSmall
                                    checked: true
                                }
                                RadioButton {
                                    text: qsTr("Artiste")
                                    font.pixelSize: fontSizeExtraSmall
                                }
                                RadioButton {
                                    text: qsTr("Album")
                                    font.pixelSize: fontSizeExtraSmall
                                    checked: false
                                }
                            }

                            FeatureButton {
                                height: 60
                                text: qsTr("Up")
                                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                                checkable: false
                                Layout.maximumHeight: navigationFeatureButton.height
                                Layout.bottomMargin: 0
                                clip: false
                                bottomPadding: 0
                                Layout.fillHeight: true
                                Layout.rightMargin: 5
                                Layout.topMargin: 0
                                topPadding: 0
                                icon.name: "folder_up"
                            }

                        }
                    }
                }
            }

            Rectangle {
                x: 0
                color: colorMain
                Layout.bottomMargin: 24
                Layout.topMargin: 24
                implicitWidth: 1
                Layout.fillHeight: true
            }

            ColumnLayout {
                x: 0
                width: 746
                Layout.preferredWidth: -1
                Layout.maximumWidth: 65535
                Layout.leftMargin: 24
                Layout.rightMargin: 24
                Layout.bottomMargin: 24
                Layout.margins: 24
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                Layout.fillHeight: true

                GlowingLabel {
                    id: timeLabel
                    text: qsTr("11:02")
                    font.pointSize: 75

                    Layout.alignment: Qt.AlignHCenter

                    GlowingLabel {
                        text: qsTr("AM")
                        anchors.left: parent.right
                        font.pixelSize: 45
                        anchors.leftMargin: 8
                    }
                }

                Label {
                    text: qsTr("01/01/2018")
                    font.pixelSize: 25
                    color: colorLightGrey
                    horizontalAlignment: Text.AlignLeft

                    Layout.alignment: Qt.AlignHCenter
                    Layout.topMargin: 2
                    Layout.bottomMargin: 10
                }

                Image {
                    id: image
                    y: 145
                    width: 100
                    height: 100
                    visible: true
                    source: "../icons/automotive/MX5.svg"
                    Layout.preferredWidth: -1
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    clip: false
                    mipmap: false
                    cache: false
                    smooth: true
                    asynchronous: false
                    Layout.fillHeight: true
                    Layout.fillWidth: false
                    sourceSize.width: 746
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                x: 0
                color: colorMain
                Layout.rightMargin: 0
                Layout.leftMargin: 0
                Layout.margins: 0
                Layout.bottomMargin: 24
                Layout.topMargin: 174
                implicitWidth: 1
                Layout.fillHeight: true
            }

            RowLayout {
                id: rowLayout1
                width: 100
                height: 100

                Container {
                    id: rightTabBar
                    width: 140
                    Layout.rightMargin: 24
                    Layout.leftMargin: 24
                    Layout.fillWidth: false
                    Layout.bottomMargin: 24
                    Layout.topMargin: 174

                    currentIndex: 1

                    Layout.fillHeight: true

                    RowLayout {
                        id: rowLayout
                        width: 100
                        height: 100

                        ColumnLayout {
                            id: columnLayout1
                            width: 100
                            height: 100
                            Layout.topMargin: 0
                            Layout.fillWidth: true

                            FeatureButton {
                                width: 60
                                height: 60
                                text: qsTr("Right\nwindow\nup")
                                Layout.rightMargin: 5
                                Layout.bottomMargin: 5
                                Layout.topMargin: 5
                                clip: false
                                topPadding: 0
                                bottomPadding: 0
                                checkable: false
                                enabled: true
                                autoExclusive: false
                                icon.name: "windows"

                                Layout.maximumHeight: navigationFeatureButton.height
                                Layout.fillHeight: true
                            }

                            FeatureButton {
                                height: 60
                                text: qsTr("Right\nwindow\ndown")
                                Layout.rightMargin: 5
                                Layout.bottomMargin: 5
                                Layout.topMargin: 5
                                clip: false
                                topPadding: 0
                                bottomPadding: 0
                                checkable: false
                                icon.name: "windows"

                                Layout.maximumHeight: navigationFeatureButton.height
                                Layout.fillHeight: true
                            }


                            FeatureButton {
                                height: 60
                                text: qsTr("Left\nwindow\nup")
                                Layout.rightMargin: 5
                                Layout.bottomMargin: 5
                                Layout.topMargin: 5
                                clip: false
                                topPadding: 0
                                bottomPadding: 0
                                checkable: false
                                icon.name: "windows"

                                Layout.maximumHeight: navigationFeatureButton.height
                                Layout.fillHeight: true
                            }

                            FeatureButton {
                                height: 60
                                text: qsTr("Left\nwindow\ndown")
                                Layout.rightMargin: 5
                                Layout.bottomMargin: 5
                                Layout.topMargin: 5
                                clip: false
                                topPadding: 0
                                bottomPadding: 0
                                checkable: false
                                icon.name: "windows"

                                Layout.maximumHeight: navigationFeatureButton.height
                                Layout.fillHeight: true
                            }



                        }


                        ColumnLayout {
                            id: columnLayout
                            width: 100
                            height: 100
                            Layout.topMargin: 0
                            Layout.fillWidth: true

                            FeatureButton {
                                height: 60
                                text: qsTr("Right\nwindow\nauto up")
                                Layout.leftMargin: 5
                                Layout.bottomMargin: 5
                                Layout.topMargin: 5
                                clip: false
                                topPadding: 0
                                bottomPadding: 0
                                checkable: false
                                icon.name: "windows_full"

                                Layout.maximumHeight: navigationFeatureButton.height
                                Layout.fillHeight: true
                            }

                            FeatureButton {
                                height: 60
                                text: qsTr("Right\nwindow\nauto down")
                                Layout.leftMargin: 5
                                Layout.bottomMargin: 5
                                Layout.topMargin: 5
                                clip: false
                                topPadding: 0
                                bottomPadding: 0
                                checkable: false
                                icon.name: "windows_full"

                                Layout.maximumHeight: navigationFeatureButton.height
                                Layout.fillHeight: true
                            }

                            FeatureButton {
                                height: 60
                                text: qsTr("Left\nwindow\nauto up")
                                Layout.leftMargin: 5
                                Layout.bottomMargin: 5
                                Layout.topMargin: 5
                                clip: false
                                topPadding: 0
                                bottomPadding: 0
                                checkable: false
                                icon.name: "windows_full"

                                Layout.maximumHeight: navigationFeatureButton.height
                                Layout.fillHeight: true
                            }

                            FeatureButton {
                                height: 60
                                text: qsTr("Left\nwindow\nauto down")
                                Layout.leftMargin: 5
                                Layout.bottomMargin: 5
                                Layout.topMargin: 5
                                clip: false
                                topPadding: 0
                                bottomPadding: 0
                                checkable: false
                                icon.name: "windows_full"

                                Layout.maximumHeight: navigationFeatureButton.height
                                Layout.fillHeight: true
                            }
                        }

                    }

                    ButtonGroup {
                        buttons: rightTabBarContentLayout.children
                    }


                    contentItem: ColumnLayout {
                        id: rightTabBarContentLayout
                        height: 736
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        spacing: 3

                        Repeater {
                            model: rightTabBar.contentModel
                        }
                    }






                }
            }


        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.6600000262260437}
}
##^##*/
