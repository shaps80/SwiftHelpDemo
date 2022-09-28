import SwiftUI
import SwiftUIBackports
import SwiftHelp

extension HelpContent {
    var deviceList: AppHelp {
        AppHelp("Device List", systemImage: "list.bullet") {
            Text("Device list")
        }
    }

    var eventFeed: AppHelp {
        AppHelp("Event Feed", systemImage: "list.bullet.below.rectangle") {
            Text("Event feed")
        }
    }
}

struct AppHelp: Help {
    var id: String { title }
    var systemImage: String
    var title: String
    var content: () -> AnyView

    init<S: StringProtocol, Content: View>(_ title: S, systemImage: String, @ViewBuilder content: @escaping () -> Content) {
        self.title = "\(title)"
        self.systemImage = systemImage
        self.content = { .init(content()) }
    }

    var body: some View {
        content()
    }
}
