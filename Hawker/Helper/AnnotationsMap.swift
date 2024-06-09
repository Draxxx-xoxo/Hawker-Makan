//
//  AnnotationsMap.swift
//  hawker
//
//  Created by Jovan Wee on 9/6/24.
//

import UIKit
import MapKit

class SanFranciscoAnnotation: NSObject, MKAnnotation {
    
    // This property must be key-value observable, which the `@objc dynamic` attributes provide.
    @objc dynamic var coordinate = CLLocationCoordinate2D(latitude: 37.779_379, longitude: -122.418_433)
    
    // Required if you set the annotation view's `canShowCallout` property to `true`
    var title: String? = NSLocalizedString("SAN_FRANCISCO_TITLE", comment: "SF annotation")
    
    // This property defined by `MKAnnotation` is not required.
    var subtitle: String? = NSLocalizedString("SAN_FRANCISCO_SUBTITLE", comment: "SF annotation")
    
}

func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    
    guard !annotation.isKind(of: MKUserLocation.self) else {
        // Make a fast exit if the annotation is the `MKUserLocation`, as it's not an annotation view we wish to customize.
        return nil
    }
    
    var annotationView: MKAnnotationView?
    
    if let annotation = annotation as? SanFranciscoAnnotation {
        annotationView = setupSanFranciscoAnnotationView(for: annotation, on: mapView)
    }
    
    return annotationView
}

private func setupSanFranciscoAnnotationView(for annotation: SanFranciscoAnnotation, on mapView: MKMapView) -> MKAnnotationView {
    let reuseIdentifier = NSStringFromClass(SanFranciscoAnnotation.self)
    let flagAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseIdentifier, for: annotation)
    
    flagAnnotationView.canShowCallout = true
    
    // Provide the annotation view's image.
    let image = #imageLiteral(resourceName: "flag")
    flagAnnotationView.image = image
    
    // Provide the left image icon for the annotation.
    flagAnnotationView.leftCalloutAccessoryView = UIImageView(image: #imageLiteral(resourceName: "sf_icon"))
    
    // Offset the flag annotation so that the flag pole rests on the map coordinate.
    let offset = CGPoint(x: image.size.width / 2, y: -(image.size.height / 2) )
    flagAnnotationView.centerOffset = offset
    
    return flagAnnotationView
}


