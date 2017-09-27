//
//  WeddingParty.swift
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
        groomsMen.append(self)
        
    }
}

 var groomsMen: [friends] = []
let Aaron = friends(name: "Aaron", job: "Sales Director at Adidas")
let Neville = friends(name: "Neville", job: "Civil Engineer")
let Jonathan = friends(name: "Jonathan", job: "Pastor")
let Joseph = friends(name: "Joseph", job: "Best Man")
let Len = friends(name: "Len", job: "Pharmacy Technician")


class WeddingParty: UIViewController, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groomsMen.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = groomsMen[indexPath.row].name
        cell.detailTextLabel?.text = groomsMen[indexPath.row].job
        return cell
    }
    
}
