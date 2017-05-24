//
//  ViewController.swift
//  TrainerApp
//
//  Created by studentNumber13 on 5/25/17.
//  Copyright © 2017 studentNumber13. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewController: UIViewController{

    //let manager = CLLocationManager()
    //var myLocation = CLLocationCoordinate2D()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        manager.requestWhenInUseAuthorization()
//        
//        if CLLocationManager.locationServicesEnabled(){
//            manager.delegate = self
//            manager.desiredAccuracy = kCLLocationAccuracyBest
//            
//        }
        
        let camera = GMSCameraPosition.camera(withLatitude: 23.810332, longitude: 90.412518, zoom: 14)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.isMyLocationEnabled = true
        self.view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 23.810332, longitude: 90.412518)
        marker.title = "Dhaka"
        marker.snippet = "Bangladesh"
        marker.map = mapView
        
        
    }
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let askLocation = locations.first!
//        myLocation = askLocation.coordinate
//        //CLLocationCoordinate2DMake(askLocation.coordinate.latitude, <#T##longitude: CLLocationDegrees##CLLocationDegrees#>)
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

