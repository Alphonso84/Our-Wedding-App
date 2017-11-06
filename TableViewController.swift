//
//  TableViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/22/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    //MARK: - DATA SOURCE
    struct Friend {
        var Name: String
        var Age: Int
        var face: UIImage
        var Job: String
        
        init(Name: String, Age: Int, face: UIImage, Job: String) {
            self.Name = Name
            self.Age = Age
            self.face = face
            self.Job = Job
        }
        
        
    }
    //Friend Instances
    var len: Friend = Friend(Name: "Len", Age: 32, face: #imageLiteral(resourceName: "Len"), Job: "Pharmacy Technician")
    var neville: Friend = Friend(Name: "Neville", Age: 34, face: #imageLiteral(resourceName: "Neville"), Job: "Civil Engineer")
    var jonathan: Friend = Friend(Name: "Jonathan", Age: 32, face: #imageLiteral(resourceName: "Jonathan"), Job: "Human Resources")
    var joseph: Friend = Friend(Name: "Joseph", Age: 29, face: #imageLiteral(resourceName: "Joseph"), Job: "Best-Man")
    var aaron: Friend = Friend(Name: "Aaron", Age: 33, face: #imageLiteral(resourceName: "Aaron"), Job: "Director")
}
    // ARRAY OF FRIENDS
    var groomsMen = 
    lazy var bridesMaids: [Friend] = []
    



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
