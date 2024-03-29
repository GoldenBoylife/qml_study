/****************************************************************************
**
** Copyright (C) 2020 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of Qt Quick Designer Components.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.10
import QtQuick.Studio.EventSystem 1.0

Rectangle {
    // qmllint disable unqualified
    // qmllint disable compiler

    id: delegateItem
    width: 190
    height: 60
    color: simulatorWindow.cellColor
    border {
        color: simulatorWindow.borderColor
        width: 1
    }

    MouseArea {
        anchors.fill: parent
        onDoubleClicked: {
            EventSystem.triggerEvent(eventId)
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: 5
        Text {
            width: 190
            color: root.textColor
            text: eventId
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: root.font.family
        }

        Text {
            width: 190
            color: root.textColor
            text: "[" + shortcut +"]"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: root.font.family
        }
    }

    Shortcut {
        sequence: shortcut
        enabled: list.focus
        onActivated : {
            EventSystem.triggerEvent(eventId)
        }
    }
    // qmllint enable unqualified
    // qmllint enable compiler
}
