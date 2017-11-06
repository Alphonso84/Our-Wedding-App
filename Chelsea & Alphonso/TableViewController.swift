//
//  TableViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/22/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class TableViewController: WeddingParty, UITableViewDataSource{
  
   func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = groomsMen[indexPath.row].Name
        cell?.imageView?.image = groomsMen[indexPath.row].face
        cell?.detailTextLabel?.text = groomsMen[indexPath.row].Job
        return cell!
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groomsMen.count
    }

}
