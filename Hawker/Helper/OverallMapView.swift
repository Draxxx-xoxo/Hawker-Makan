import SwiftUI
import MapKit

struct OverallMapView: View {
    
    @State private var mapFeature : Hawker?
    
    var body: some View {
        Map(position: .constant(.region(region)), selection: $mapFeature) {
            ForEach(hawkers) { hawker in
                Marker(hawker.name, coordinate: hawker.locationCoordinate)
                    .tint(.orange)
                    .tag(hawker)

            }
            
        }
        .mapStyle(mapstyle)
        //.mapControlVisibility(.hidden)
        .sheet(item: $mapFeature, content: { hawker in
            HawkerSheet(hawker: hawker)
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
            
        })
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 1.3521, longitude: 103.8198),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    private var mapstyle: MapStyle {
        .standard(pointsOfInterest: .including([.parking, .publicTransport]))
    }
}

#Preview {
    OverallMapView()//, location: UserLocation(location: CLLocation)
}

