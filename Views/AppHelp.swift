import SwiftUI
import SwiftUIBackports
import SwiftHelp

extension HelpContent {
    // Get started
    var deviceList: AppHelp {
        AppHelp("Device List", systemImage: "list.bullet") {
            Text("Devices")
        }
    }

    var eventFeed: AppHelp {
        AppHelp("Event Feed", systemImage: "list.bullet.below.rectangle") {
            Text("Feed")
        }
    }

    var profile: AppHelp {
        AppHelp("My Profile", systemImage: "person") {
            Text("Profile")
        }
    }

    // Feed
    var filterFeed: AppHelp {
        AppHelp("Filter your Feed", systemImage: "line.3.horizontal.decrease.circle") {
            Text("Filter")
        }
    }

    var notifications: AppHelp {
        AppHelp("Push notifications", systemImage: "platter.filled.top.iphone") {
            Text("Notifications")
        }
    }

    // Report
    var communication: AppHelp {
        AppHelp("Communication", systemImage: "point.3.connected.trianglepath.dotted") {
            Text("Communication")
        }
    }

    var traffic: AppHelp {
        AppHelp("Traffic", systemImage: "chart.xyaxis.line") {
            Text("Traffic")
        }
    }

    var destinations: AppHelp {
        AppHelp("Destinations", systemImage: "pin") {
            Text("Destinations")
        }
    }

    var performance: AppHelp {
        AppHelp("Performance", systemImage: "gauge") {
            Text("Performance")
        }
    }

    // Widgets
    var overviewWidget: AppHelp {
        AppHelp("Monthly overview", systemImage: "calendar") {
            Text("Overview widget")
        }
    }

    var performanceWidgets: AppHelp {
        AppHelp("Performance insights", systemImage: "gauge") {
            Text("Performance widgets")
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
