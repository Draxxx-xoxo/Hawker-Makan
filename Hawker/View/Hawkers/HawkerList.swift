import SwiftUI
import MapKit

struct HawkerList: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List(searchResults) { hawker in
                NavigationLink {
                    HawkerDetail(hawker: hawker)
                    
                } label: {
                    HawkerRow(hawker: hawker)
                }
            }
            .navigationTitle("Hawker Center")
        }
        .searchable(text: $searchText)
    }
    
    var searchResults: [Hawker] {
        if searchText.isEmpty {
            return hawkers
        } else {
            return hawkers.filter{
                $0.name.contains(searchText)
            }
        }
    }
}

#Preview {
    HawkerList()
}


