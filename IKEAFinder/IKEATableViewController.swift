//
//  IKEATableViewController.swift
//  IKEAFinder
//
//  Created by Elliott, Rob on 9/24/18.
//  Copyright © 2018 Elliott, Rob. All rights reserved.
//

import UIKit

class IKEATableViewController : UITableViewController {
    
    var IKEABucket: IKEADataStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    //geth the height of the status bar
    
    let statusBarHeight = UIApplication.shared.statusBarFrame.height
    
    let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return IKEABucket.allIKEAs.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        
        // FIND A REUSABLE CELL FROM THE STORYBOARD
        let thisCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        
        // BIND A SPECIFIC INSTANCE OF THE IKEA CLASS (stored in our bucket) TO THE TABLE CELL WE FOUND
        let thisIKEA = IKEABucket.allIKEAs[indexPath.row]
        
        
        // DISPLAY INFORMATION TO THE USER ON THE TABLE CELL
        thisCell.textLabel?.text = thisIKEA.storeName
        thisCell.detailTextLabel?.text = thisIKEA.country
        
        
        // RETURN THE FORMATTED CELL
        return thisCell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailView"{
        
        // get  a refernce to our segue object
        
        let detailView = segue.destination as! IKEADetailViewController
        
        if let indexPath = self.tableView.indexPathForSelectedRow {
            
            let selectedIKEA = IKEABucket.allIKEAs[indexPath.row]
            
            detailView.selectedIKEA = selectedIKEA
            
        }
        }
    }
    
}






