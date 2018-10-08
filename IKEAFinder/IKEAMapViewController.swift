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


class IKEAMapViewController : UIViewController {
  var selectedIKEA: IKEA!
  override func viewDidLoad() {
  super.viewDidLoad()
  self.navigationItem.title = selectedIKEA.storeName
  }
}
