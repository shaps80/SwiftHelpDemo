import SwiftUI
import SwiftUIBackports

struct ContentView: View {
    @State private var showHelp: Bool = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    NavigationLink {
                        Text("Random destination")
                    } label: {
                        Text("I wonder what this is?")
                    }
                    .help(\.filterFeed)
                }
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("Demo")
            .toolbar {
                Button {
                    withAnimation {
                        showHelp.toggle()
                    }
                } label: {
                    Label("Help", systemImage: "questionmark.circle")
                }
            }
            .help(isVisible: showHelp)
            .helpElementStyle(.questionmark)
        }
        .navigationViewStyle(.stack)
    }
}
