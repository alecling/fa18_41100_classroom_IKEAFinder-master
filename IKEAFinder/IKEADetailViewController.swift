//
//  IKEADetailViewController.swift
//  IKEAFinder
//
//  Created by Elliott, Rob on 9/24/18.
//  Copyright © 2018 Elliott, Rob. All rights reserved.
//

import UIKit

class IKEADetailViewController : UIViewController {
    
    var selectedIKEA: IKEA!
    
    @IBOutlet var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var lblStoreName: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
    
        print(selectedIKEA.storeName)
        
        lblStoreName.text = selectedIKEA.storeName
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    let mapView = segue.destination as! IKEAMapViewController
    mapView.selectedIKEA = selectedIKEA
    }
    
}
