//
//  MapViewController.swift
//  TabsMaterialDesign
//
//  Created by Desenvolvedor on 19/11/17.
//  Copyright © 2017 alexandreoliveira.eti.br. All rights reserved.
//

import UIKit
import GoogleMaps
import CoreLocation

class MapViewController: BaseViewController {

    var locationManager: CLLocationManager!
    var mapView: GMSMapView!
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
    }
}

extension MapViewController {
    fileprivate func loadCurrentLocation() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
    }
}

extension MapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
}
