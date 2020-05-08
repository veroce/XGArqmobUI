//
//  MapaAreasServicioController.swift
//  autocaravanas
//
//  Created by Verónica Rodríguez Cepeda on 20/11/2019.
//  Copyright © 2019 Sixtema All rights reserved.
//

import UIKit
import MapKit

protocol MapDelegate {
    func anotacionSeleccionada()
    func annotationDidDeselect()
}

class MapController: NSObject {
    var delegate: MapDelegate?
    
    func getRadius(centralLocation: CLLocation, mapView: MKMapView) -> Double{
        let topCentralLat:Double = centralLocation.coordinate.latitude -  mapView.region.span.latitudeDelta/2
        let topCentralLocation = CLLocation(latitude: topCentralLat, longitude: centralLocation.coordinate.longitude)
        let radius = centralLocation.distance(from: topCentralLocation)
        return radius / 1000.0 // to convert radius to meters
    }
}

extension MapController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        guard let delegate = self.delegate else {
            return
        }
        delegate.anotacionSeleccionada()
        
    }
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        guard let delegate = self.delegate else {
            return
        }
        delegate.annotationDidDeselect()
    }
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        
    }
}
