import SwiftUI
import MapKit

struct ContentView: View {


    
    var body: some View {
        TabView() {
            HawkerList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                
            SelectHawker()
                .tabItem {
                    Label("Order", systemImage: "fork.knife")
                }
               
            
            OverallMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
                
            
        }
    }
}

#Preview {
    ContentView()
}
