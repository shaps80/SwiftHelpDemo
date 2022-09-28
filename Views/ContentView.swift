import SwiftUI
import SwiftUIBackports
import SwiftHelp

struct HelpListView: View {
    @State private var showHelp: Bool = false

    var body: some View {
        NavigationView {
            List {
                Backport.Section("Get started") {
                    HelpView(\.deviceList)
                    HelpView(\.eventFeed)
                    HelpView(\.profile)
                }

                Backport.Section("Discover mode") {
                    HelpView(\.filterFeed)
                    HelpView(\.notifications)
                }

                Backport.Section("Reports") {
                    HelpView(\.communication)
                    HelpView(\.traffic)
                    HelpView(\.destinations)
                    HelpView(\.performance)
                }

                Backport.Section("Widgets") {
                    HelpView(\.overviewWidget)
                    HelpView(\.performanceWidgets)
                }
            }
            .navigationTitle("Help centre")
        }
        .navigationViewStyle(.stack)
        .helpPresentationStyle(.plain)
    }
}

struct HelpView: View {
    let help: AppHelp

    init(_ keyPath: KeyPath<HelpContent, AppHelp>) {
        help = HelpContent[keyPath]
    }

    var body: some View {
        NavigationLink(help: help) {
            Label(help.title, systemImage: help.systemImage)
        }
    }
}
