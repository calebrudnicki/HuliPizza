//
//  ViewController.swift
//  HistoryMap
//
//  Created by Steven Lipton on 9/19/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    var latitude:CLLocationDegrees = 40.8371
    var longitude:CLLocationDegrees = 14.2467
    var regionRadius:CLLocationDistance = 1000000
    private let mapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mapView)
    }
    
    func updateMap() {
        mapView.frame = view.frame
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        mapView.setRegion(MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius),animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        mapView.addAnnotation(annotation)
    }

}
