import SwiftUI
import MapKit

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }

    
    var body: some View {
        TabView(selection: $selection) {
            HawkerList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.featured)
            
            OverallMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
}
