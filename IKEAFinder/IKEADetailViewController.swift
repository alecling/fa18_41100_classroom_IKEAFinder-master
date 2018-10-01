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
    
    override func viewWillAppear(_ animated: Bool) {
        print(selectedIKEA.storeName)
    }
}
