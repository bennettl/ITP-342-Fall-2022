//
//  ViewController.swift
//  LocationService
//
//  Created by Bennett Lee on 10/31/22.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
                
        // For demo purposes only!!!
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // in meters
          
        // Notify us every 100th meters since last location update
        locationManager.distanceFilter = 100
        
        locationManager.delegate = self

        // Asking for permissions to access location
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        locationManager.startUpdatingLocation()
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        locationManager.stopUpdatingLocation()
//    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if let location = locations.first {
            let lat = location.coordinate.latitude
            let lng = location.coordinate.longitude
            print("The location is \(lat),\(lng)")
        }
    }

}

