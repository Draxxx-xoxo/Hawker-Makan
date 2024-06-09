import SwiftUI
import MapKit

struct SpecificMapView: View {
    var coordinate: CLLocationCoordinate2D
    var name: String
    
    var body: some View {
        Map(position: .constant(.region(region))){
            Marker(name, coordinate: coordinate)
                .tint(.orange)
        }
        .mapStyle(mapstyle)
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    }
    
    private var mapstyle: MapStyle {
        .standard(pointsOfInterest: .including([.parking, .publicTransport]))
    }
    
}

#Preview {
    SpecificMapView(coordinate: hawkers[0].locationCoordinate, name:"Hello")
}

