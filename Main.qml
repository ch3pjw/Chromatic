import QtQuick 2.2
import Ubuntu.Components 1.1
import "components"

MainView {
    width: units.gu(45)
    height: units.gu(75)
    applicationName: "palette.kevinfeyder"
    backgroundColor: "white"

    PageStack {
        id: stack
    }

    Component {
        id: home
        Home {
            onHelpClicked: stack.push(help);
            onPlayClicked: stack.push(game);
        }
    }

    Component {
        id: game
        GamePage {}
    }

    Component {
        id: help
        NewHelp {}
    }

    Component.onCompleted: stack.push(home);
}
