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
    width: 1024
    height: 768
    minimumWidth: 1180
    minimumHeight: 663
    visible: true
    color: "#000000"
    title: "Project MX-5"

    readonly property color colorGlow: "#fd6600"
    readonly property color colorWarning: "#d5232f"
    readonly property color colorMain: "#fd6600"
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
        width: 1024
        height: 768
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

            ColumnLayout {
                x: 10
                width: 300
                Layout.maximumWidth: 300
                Layout.minimumWidth: 300
                Layout.margins: 10
                Layout.fillHeight: true
                Layout.fillWidth: true
                spacing: 16

                RowLayout {
                    id: rowLayout2
                    width: 300
                    height: 200
                    spacing: 0
                    Layout.maximumHeight: 250
                    Layout.minimumHeight: 250
                    Layout.fillWidth: true

                    ColumnLayout {
                        id: columnLayout3
                        width: 150
                        height: 100
                        spacing: 0
                        Layout.minimumWidth: 150
                        Layout.fillWidth: true

                        FeatureButton {
                            width: 150
                            height: 60
                            text: qsTr("Left\nwindow\nup")
                            font.weight: Font.DemiBold
                            font.capitalization: Font.AllUppercase
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.minimumWidth: 140
                            Layout.rightMargin: 5
                            Layout.bottomMargin: 5
                            Layout.topMargin: 5
                            clip: false
                            topPadding: 0
                            bottomPadding: 0
                            checkable: false
                            icon.name: "windows"

                            Layout.fillHeight: true
                        }

                        FeatureButton {
                            width: 150
                            height: 60
                            text: qsTr("Left\nwindow\ndown")
                            font.weight: Font.DemiBold
                            font.capitalization: Font.AllUppercase
                            Layout.minimumWidth: 140
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.rightMargin: 5
                            Layout.bottomMargin: 5
                            Layout.topMargin: 5
                            clip: false
                            topPadding: 0
                            bottomPadding: 0
                            checkable: false
                            icon.name: "windows"

                            Layout.fillHeight: true
                        }


                    }

                    ColumnLayout {
                        id: columnLayout2
                        x: 150
                        width: 150
                        height: 100
                        spacing: 0
                        Layout.fillWidth: true
                        Layout.minimumWidth: 150
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                        FeatureButton {
                            width: 150
                            height: 60
                            text: qsTr("Left\nwindow\nauto up")
                            font.weight: Font.DemiBold
                            font.capitalization: Font.AllUppercase
                            Layout.maximumWidth: 65535
                            Layout.minimumWidth: 140
                            Layout.leftMargin: 5
                            Layout.bottomMargin: 5
                            Layout.topMargin: 5
                            clip: false
                            topPadding: 0
                            bottomPadding: 0
                            checkable: false
                            icon.name: "windows_full"
                            Layout.fillHeight: true
                        }

                        FeatureButton {
                            width: 150
                            height: 60
                            text: qsTr("Left\nwindow\nauto down")
                            font.weight: Font.DemiBold
                            font.capitalization: Font.AllUppercase
                            Layout.minimumWidth: 140
                            Layout.rightMargin: 0
                            Layout.margins: 0
                            Layout.leftMargin: 5
                            Layout.bottomMargin: 5
                            Layout.topMargin: 5
                            clip: false
                            topPadding: 0
                            bottomPadding: 0
                            checkable: false
                            icon.name: "windows_full"
                            Layout.fillHeight: true
                        }


                    }


                }

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
                    width: 255
                    height: 200
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

            ColumnLayout {
                x: 0
                width: 384
                Layout.topMargin: 50
                Layout.preferredWidth: -1
                Layout.maximumWidth: 65535
                Layout.leftMargin: 0
                Layout.rightMargin: 0
                Layout.bottomMargin: 0
                Layout.margins: 0
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: false
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
                    Layout.maximumWidth: 384
                    Layout.preferredWidth: -1
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    clip: false
                    mipmap: false
                    cache: false
                    smooth: true
                    asynchronous: false
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    sourceSize.width: 746
                    fillMode: Image.PreserveAspectFit
                }
            }

            RowLayout {
                id: rowLayout1
                x: 0
                y: 10
                width: 300
                height: 200
                spacing: 0
                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                Layout.maximumHeight: 250
                Layout.minimumHeight: 250
                Layout.margins: 10
                Layout.fillWidth: false

                RowLayout {
                    id: rowLayout
                    width: 300
                    height: 100
                    visible: true
                    spacing: 0
                    Layout.minimumWidth: 300
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.fillWidth: true

                    ColumnLayout {
                        id: columnLayout1
                        width: 100
                        height: 100
                        spacing: 0
                        Layout.topMargin: 0
                        Layout.fillWidth: true

                        FeatureButton {
                            width: 60
                            height: 60
                            text: qsTr("Right\nwindow\nup")
                            font.weight: Font.DemiBold
                            font.capitalization: Font.AllUppercase
                            Layout.fillWidth: true
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

                            Layout.fillHeight: true
                        }

                        FeatureButton {
                            height: 60
                            text: qsTr("Right\nwindow\ndown")
                            font.weight: Font.DemiBold
                            font.capitalization: Font.AllUppercase
                            Layout.fillWidth: true
                            Layout.rightMargin: 5
                            Layout.bottomMargin: 5
                            Layout.topMargin: 5
                            clip: false
                            topPadding: 0
                            bottomPadding: 0
                            checkable: false
                            icon.name: "windows"

                            Layout.fillHeight: true
                        }




                    }


                    ColumnLayout {
                        id: columnLayout
                        width: 100
                        height: 100
                        spacing: 0
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                        Layout.topMargin: 0
                        Layout.fillWidth: true

                        FeatureButton {
                            height: 60
                            text: qsTr("Right\nwindow\nauto up")
                            font.weight: Font.DemiBold
                            font.capitalization: Font.AllUppercase
                            Layout.fillWidth: true
                            Layout.leftMargin: 5
                            Layout.bottomMargin: 5
                            Layout.topMargin: 5
                            clip: false
                            topPadding: 0
                            bottomPadding: 0
                            checkable: false
                            icon.name: "windows_full"
                            Layout.fillHeight: true
                        }

                        FeatureButton {
                            height: 60
                            text: qsTr("Right\nwindow\nauto down")
                            font.weight: Font.DemiBold
                            font.capitalization: Font.AllUppercase
                            Layout.fillWidth: true
                            Layout.leftMargin: 5
                            Layout.bottomMargin: 5
                            Layout.topMargin: 5
                            clip: false
                            topPadding: 0
                            bottomPadding: 0
                            checkable: false
                            icon.name: "windows_full"
                            Layout.fillHeight: true
                        }
                    }

                }

            }









        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
