import SwiftUI
//import DetailView

struct ContentView: View {
    var body: some View {
        TabView {
            // First Tab: Existing Content
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            // Second Tab: Example Additional View
            DetailView()
                .tabItem {
                    Label("Detail", systemImage: "list.bullet.clipboard.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}
#Preview {
    ContentView()
}
