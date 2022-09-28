import SwiftUI
import SwiftUIBackports
import SwiftHelp

extension HelpContent {
    // Get started
    var deviceList: AppHelp {
        AppHelp("Device List", systemImage: "list.bullet") {
            HelpDetailView(title: "Devices")
        }
    }

    var eventFeed: AppHelp {
        AppHelp("Event Feed", systemImage: "list.bullet.below.rectangle") {
            HelpDetailView(title: "Feed")
        }
    }

    var profile: AppHelp {
        AppHelp("My Profile", systemImage: "person") {
            HelpDetailView(title: "Profile")
        }
    }

    // Feed
    var filterFeed: AppHelp {
        AppHelp("Filter your Feed", systemImage: "line.3.horizontal.decrease.circle") {
            HelpDetailView(title: "Filter")
        }
    }

    var notifications: AppHelp {
        AppHelp("Push notifications", systemImage: "platter.filled.top.iphone") {
            HelpDetailView(title: "Notifications")
        }
    }

    // Report
    var communication: AppHelp {
        AppHelp("Communication", systemImage: "point.3.connected.trianglepath.dotted") {
            HelpDetailView(title: "Communication")
        }
    }

    var traffic: AppHelp {
        AppHelp("Traffic", systemImage: "chart.xyaxis.line") {
            HelpDetailView(title: "Traffic")
        }
    }

    var destinations: AppHelp {
        AppHelp("Destinations", systemImage: "pin") {
            HelpDetailView(title: "Destinations")
        }
    }

    var performance: AppHelp {
        AppHelp("Performance", systemImage: "gauge") {
            HelpDetailView(title: "Performance")
        }
    }

    // Widgets
    var overviewWidget: AppHelp {
        AppHelp("Monthly overview", systemImage: "calendar") {
            HelpDetailView(title: "Overview widget")
        }
    }

    var performanceWidgets: AppHelp {
        AppHelp("Performance insights", systemImage: "gauge") {
            HelpDetailView(title: "Performance widgets")
        }
    }
}

struct HelpDetailView: View {
    let title: String

    var body: some View {
        Text(title)
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
