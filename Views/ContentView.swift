import SwiftUI
import SwiftUIBackports
import SwiftHelp

struct ContentView: View {
    @State private var showHelp: Bool = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    NavigationLink("Communication Charts") {
                        HelpContent().whatsNew.body
                    }
                    .help(\.communication)
                    .helpElementStyle(.questionmark)

                    NavigationLink(help: \.whatsNew)

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
        .onDisappear { showHelp = false }
    }
}
