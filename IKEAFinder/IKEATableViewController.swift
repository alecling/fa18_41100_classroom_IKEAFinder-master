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
    
}







