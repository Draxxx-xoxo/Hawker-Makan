import Foundation
import SwiftUI
import MapKit


struct Hawker: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var address: String
    var category: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var foodStalls: [Foodstalls]
    
    struct Foodstalls: Hashable, Codable, Identifiable {
        var id: Int
        var hname: String
        var stallNumber: String
        var openingHours: OpeningHours
        var paymentMethods: Array<String>
        
        private var imageName: String
        
        var image: Image {
            Image(imageName)
        }
        
    }
    
    struct OpeningHours: Hashable, Codable{
        var monday: String
        var tuesday: String
        var wednesday: String
        var thursday: String
        var friday: String
        var saturday: String
        var sunday: String
    }
}


