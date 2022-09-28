import SwiftUI
import SwiftUIBackports
import SwiftHelp

struct ContentView: View {
    @State private var showHelp: Bool = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    NavigationLink("Whats New") {
                        HelpContent().whatsNew.body
                    }
                    .help(\.whatsNew)
                    .helpElementStyle(.questionmark(alignment: .bottomLeading))

                    NavigationLink(help: \.communication)
                        .help(\.communication)
                        .helpElementStyle(.questionmark)

                    VStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)

                        Text("Hello, world!")
                    }
                    .help(\.whatsNew)
                }
                .frame(maxWidth: .infinity)
                .padding()
            }
            .navigationTitle("Content")
        }
        #if os(iOS)
        .navigationViewStyle(.stack)
        #endif
        .help(isVisible: showHelp)
        .backport.overlay(alignment: .bottom) {
            Toggle("Help Enabled", isOn: $showHelp.animation(.interactiveSpring()))
                .padding()
        }
    }
}
