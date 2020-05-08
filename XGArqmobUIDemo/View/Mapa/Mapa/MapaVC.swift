//
//  MapaVC.swift
//  demoAr
//
//  Created by Vero on 23/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import MapKit
import XGArqmobUI
class MapaVC: UIViewController {
    let initialLocation = CLLocation(latitude: 42.781726, longitude: -7.891219)
    @IBOutlet weak var mapView: MKMapView!
    var mapController = MapController()
    @IBOutlet weak var bottomConstraintViewInfo: NSLayoutConstraint!
    @IBOutlet weak var viewFicha: AmCardMap!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMapView()
        
        // Do any additional setup after loading the view.
    }

    
    
    func configureMapView() {
        self.mapController.delegate = self
        self.mapView.delegate = self.mapController
        self.mapView.showsUserLocation = true
        
        // Add custom anotation
        let demoAnnotaion = MKPointAnnotation()
        demoAnnotaion.title = "Xunta de Galicia"
        demoAnnotaion.coordinate = CLLocationCoordinate2D(latitude: 42.8883382, longitude: -8.5362604)
        mapView.addAnnotation(demoAnnotaion)
        
        let coordinateRegion = MKCoordinateRegion(center: demoAnnotaion.coordinate,
                                                  latitudinalMeters: 500, longitudinalMeters: 500)
        self.mapView.setRegion(coordinateRegion, animated: true)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
extension MapaVC: MapDelegate {
    func anotacionSeleccionada() {
        viewFicha.loadData(title: "Xunta de Galicia", image: "card_map", location: "Plaza Camilo José Cela, nº s/n, 15403-Ferrol", category: "ADMINISTRACION")
        if self.bottomConstraintViewInfo.constant != 16{
            self.bottomConstraintViewInfo.constant = 16
            UIView.animate(withDuration: 0.5, animations: {
                self.viewFicha.layoutIfNeeded()
            }) { (finish) in
            }
            
        }
    }
    
    func annotationDidDeselect() {
        self.bottomConstraintViewInfo.constant = -200.0
        UIView.animate(withDuration: 0.5, animations: {
            self.viewFicha.layoutIfNeeded()
        }) { (finish) in
        }
    }
    
    
}
