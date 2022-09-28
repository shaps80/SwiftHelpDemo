import SwiftUI
import SwiftUIBackports

struct ContentView: View {
    @State private var showHelp: Bool = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Headline")
                                .foregroundColor(.primary)
                                .font(.headline)

                            Text("I wonder what this is?")
                                .foregroundColor(.secondary)
                                .font(.footnote)
                        }

                        Spacer(minLength: 0)

                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                            .font(.footnote)
                    }
                    .background(Color.primary.opacity(0.0001))
                    .help(\.filterFeed)
                    .helpElementStyle(.questionmark(alignment: .trailing))
                }
                .frame(maxWidth: .infinity)
                .padding()
            }
            .navigationTitle("Demo")
            .toolbar {
                Button {
                    withAnimation {
                        showHelp.toggle()
                    }
                } label: {
                    Label("Help", systemImage: "questionmark.circle")
                        .accentColor(.yellow)
                }
            }
            .help(isVisible: $showHelp)
        }
        .navigationViewStyle(.stack)
    }
}
