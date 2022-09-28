import SwiftUI
import SwiftUIBackports
import SwiftHelp

struct ContentView: View {
    @State private var showHelp: Bool = false

    var body: some View {
        NavigationView {
            List {
//                NavigationLink(help: \.deviceList) {
//                    Label(, systemImage: "list.bullet").chevron()
//                }
                NavigationLink {
                    HelpContent[\.deviceList].body
                        .navigationTitle(HelpContent[\.deviceList].title)
                } label: {
                    Text(HelpContent[\.deviceList].title)
                }

                NavigationLink(help: \.eventFeed)
            }
            .navigationTitle("Content")
        }
        .navigationViewStyle(.stack)
        .helpPresentationStyle(.plain)
    }
}
