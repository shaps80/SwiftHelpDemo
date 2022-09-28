import SwiftUI
import SwiftHelp

extension HelpContent {
    var whatsNew: some Help {
        AppHelp(id: "whats-new", title: "Whats new") {
            Text("Various new features")
        }
    }

    var communication: some Help {
        AppHelp(id: "communication", title: "Communication") {
            Text("Some communication benefits")
        }
    }
}


struct AppHelp<Content: View>: Help {
    var id: String
    var title: String
    var body: Content

    init(id: String, title: String, @ViewBuilder content: () -> Content) {
        self.id = id
        self.title = title
        self.body = content()
    }
}
