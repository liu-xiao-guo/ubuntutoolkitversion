import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "ubuntutoolkitversion.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("ubuntutoolkitversion")

        Column {
            anchors.centerIn: parent
            Label { text: "Toolkit ver: " + Ubuntu.toolkitVersion  }
            Label { text: "Major: " + Ubuntu.toolkitVersionMajor  }
            Label { text: "Minor: " + Ubuntu.toolkitVersionMinor  }
            Label { text: "Toolkit ver: " + Ubuntu.version(Ubuntu.toolkitVersionMajor,
                                         Ubuntu.toolkitVersionMinor)  }
        }
    }
}

