import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    GridToListButton()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
