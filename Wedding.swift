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
   
    var sections = ["GroomsMen", "BridesMaids"]
    var groomsMen: [friends] = []
    var bridesMaids: [friends] = []
    
    let Aaron = friends(name: "Aaron", job: "Sales Director at Adidas")
    let Neville = friends(name: "Neville", job: "Civil Engineer")
    let Jonathan = friends(name: "Jonathan", job: "Pastor")
    let Joseph = friends(name: "Joseph", job: "Best Man")
    let Len = friends(name: "Len", job: "Pharmacy Technician")
    
   
    let Gena = friends(name: "Gena", job: "")
    let Chereese = friends(name: "Chereese", job: "")
    let Alecia = friends(name: "Alecia", job: "")
    let Kristy = friends(name: "Kristy", job: "")
    let Blake = friends(name: "Blake", job: "")
    let Ashley = friends(name: "Ashley", job: "")
    let Danielle = friends(name: "Danielle", job: "")
    let Brittney_C = friends(name: "Brittney Coleman", job: "")
    let Brittney_R = friends(name: "Brittney Richardson", job: "")
    

    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groomsMen = [ Aaron, Neville, Jonathan, Joseph, Len]
        bridesMaids = [Gena, Chereese, Alecia, Kristy, Blake, Ashley, Danielle, Brittney_C, Brittney_R]
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
       
        return sections[section]
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
    
    if sections.count == groomsMen.count {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = groomsMen[indexPath.row].name
        cell?.detailTextLabel?.text = groomsMen[indexPath.row].job
        return cell!
    } else if
        sections.count == bridesMaids.count {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = bridesMaids[indexPath.row].name
        
        cell?.detailTextLabel?.text = bridesMaids[indexPath.row].job
        return cell!
    
    }
    return cell!
    }
    
    

    
    
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            switch (section) {
            case 0:
            return groomsMen.count
            case 1:
                return bridesMaids.count
            default:
                return groomsMen.count
            }
            
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return sections.count
        }
    
}
