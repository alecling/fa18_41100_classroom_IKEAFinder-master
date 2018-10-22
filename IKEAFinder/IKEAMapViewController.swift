//
//  IKEAMapViewController.swift
//  IKEAFinder
//
//  Created by Alexa on 10/8/18.
//  Copyright © 2018 Elliott, Rob. All rights reserved.
//


import Foundation
import UIKit
import MapKit
import CoreLocation

class IKEAMapViewController : UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var selectedIKEA: IKEA!
    var currentCoordinate: CLLocationCoordinate2D!
    
    //the ! means it cannot be empty
    var locationManager: CLLocationManager!
    
    @IBOutlet weak var mapWorldMap: MKMapView!
    
    override func viewWillAppear(_ animated: Bool) {
        //create an object of cllocationmanager
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customannotation")
        annotationView.image = UIImage(named: "pin")
        
    
        return annotationView
    }
    
    //CLLocationManager DELEGATE FUNCTIONS
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //(old)  centerMapOnLocation(locationCoord: selectedIKEA.coordinate, distance: 5000)
        
        let centerPoint = calculateCenterPoint(location1: locations.last!.coordinate, location2: selectedIKEA.coordinate)
        
        //calculate the region size
        let regionSize = calculateRegionSize(location1: locations.last!.coordinate, location2: selectedIKEA.coordinate)
        
        //move and zoom on the map
        centerMapOnLocation(locationCoord: centerPoint, distance: regionSize)
        
        mapWorldMap.addAnnotation(selectedIKEA)
        
        
    }
    
    //internal functions
    //this function moves and centers the map
    
    func centerMapOnLocation(locationCoord: CLLocationCoordinate2D, distance: Double) {
        
        let mappedRegion = MKCoordinateRegionMakeWithDistance(locationCoord, distance, distance)
        
        mapWorldMap.setRegion(mappedRegion, animated: true)
        
    }
    
    // CALCULATE THE CENTER COORDINATES BETWEEN TWO GIVEN COORDINATES
    func calculateCenterPoint(location1: CLLocationCoordinate2D, location2: CLLocationCoordinate2D) -> CLLocationCoordinate2D {
        
        let lon1: Double = location1.longitude * Double.pi / 180;
        let lon2: Double = location2.longitude * Double.pi / 180;
        
        let lat1: Double = location1.latitude * Double.pi / 180;
        let lat2: Double = location2.latitude * Double.pi / 180;
        
        let dLon: Double = lon2 - lon1;
        
        let x: Double = cos(lat2) * cos(dLon);
        let y: Double = cos(lat2) * sin(dLon);
        
        var lat3: Double = atan2( sin(lat1) + sin(lat2), sqrt((cos(lat1) + x) * (cos(lat1) + x) + y * y) );
        var lon3: Double = lon1 + atan2(y, cos(lat1) + x);
        
        lat3  = lat3 * 180 / Double.pi;
        lon3 = lon3 * 180 / Double.pi;
        
        let center: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat3, lon3)
        
        return center;
    }
    
    func calculateRegionSize(location1: CLLocationCoordinate2D, location2: CLLocationCoordinate2D) -> Double{
        
        //create cllocation objects
        let regionLocation1: CLLocation = CLLocation(latitude: location1.latitude, longitude: location1.longitude)
        
        let regionLocation2: CLLocation = CLLocation(latitude: location2.latitude, longitude: location2.longitude)
        
        //use the built-in method to get the distance between them
        let distanceInMeters: CLLocationDistance = regionLocation1.distance(from: regionLocation2)
        
        return distanceInMeters
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = selectedIKEA.storeName
        
        
    }
}

