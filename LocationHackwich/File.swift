//
//  File.swift
//  LocationHackwich
//
//  Created by Tucker(School) on 7/30/21.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    var locationManager = CLLocationManager()
    override init() {
            super.init()
        //when initialized it delegate to iteself
            locationManager.delegate = self
        //requests ability to use location
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()

        }
}
