import SwiftUI
import MapKit

struct OverallMapView: View {
    
    @State var presentSheet = true
    
    var body: some View {
        Map(position: .constant(.region(region))) {
            ForEach(hawkers) { hawker in
                Marker(hawker.name, coordinate: hawker.locationCoordinate)
                    .tint(.orange)
                    .tag(hawker.id)
            }
            
        }
        .mapStyle(mapstyle)
        //.mapControlVisibility(.hidden)
        .sheet(isPresented: $presentSheet) {
            
            HawkerSheet(hawker: hawkers[0])
                .presentationDetents([.height(500)])
        }
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

