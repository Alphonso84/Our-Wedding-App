//
//  Wedding.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/26/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit


struct friends {
    var name: String
    var job: String
    
    init(name: String, job: String) {
        self.name = name
        self.job = job
        
        }
}


class Wedding: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    
    var groomsMen: [friends] = []
    
    let Aaron = friends(name: "Aaron", job: "Sales Director at Adidas")
    let Neville = friends(name: "Neville", job: "Civil Engineer")
    let Jonathan = friends(name: "Jonathan", job: "Pastor")
    let Joseph = friends(name: "Joseph", job: "Best Man")
    let Len = friends(name: "Len", job: "Pharmacy Technician")
    

    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groomsMen = [ Aaron, Neville, Jonathan, Joseph, Len]
        //Delegate and Datasource are set in StoryBoard
        //tableView.delegate = self
        //tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        return "GroomsMen"
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            cell.textLabel?.text = groomsMen[indexPath.row].name
            cell.detailTextLabel?.text = groomsMen[indexPath.row].job
            return cell
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return groomsMen.count
        
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    
}
