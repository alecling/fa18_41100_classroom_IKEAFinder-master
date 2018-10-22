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


class IKEAMapViewController : UIViewController, CLLocationManagerDelegate {
  var selectedIKEA: IKEA!
    var locationManager: CLLocationManager!
    
    override func viewWillAppear(_ animated: Bool) {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
  override func viewDidLoad() {
  super.viewDidLoad()
  self.navigationItem.title = selectedIKEA.storeName
  }
}
