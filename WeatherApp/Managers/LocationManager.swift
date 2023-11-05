//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Mateusz Rybczyński on 02/11/2023.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private var manager = CLLocationManager()
    @Published var userLocation: CLLocation?
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    static let shared = LocationManager()
    
    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.startUpdatingLocation()
    }
    
    func requestLocation() {
        isLoading = true
        manager.requestWhenInUseAuthorization()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            print("DEBUG: Not determined")
        case .restricted:
            print("DEBUG: Restricted")
        case .denied:
            print("DEBUG: Denied")
        case .authorizedWhenInUse:
            print("DEBUG: When in use")
        case .authorizedAlways:
            print("DEBUG: Always")
        default:
            break
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailRangingFor beaconConstraint: CLBeaconIdentityConstraint, error: Error) {
        isLoading = false
        print("Error \(error)")
    }
}
