import SwiftUI
import SwiftUIBackports
import SwiftHelp

@main
struct DemoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .helpPresentationStyle(.sheet)
                    .tabItem {
                        Label("Demo", systemImage: "list.bullet.rectangle")
                    }

                HelpListView()
                    .helpPresentationStyle(.plain)
                    .tabItem {
                        Label("Help", systemImage: "questionmark.circle")
                    }
            }
        }
    }
}
