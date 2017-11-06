//
//  GroupTableViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/22/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class GroupTableViewController: WeddingParty {

// MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return groomsMen.count
    }
}
