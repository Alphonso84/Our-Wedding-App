//
//  Friends.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/25/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit



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

class Friends {
   

        <#statements#>
    }
    var len: Friend = Friend(Name: "Len", Age: 32, face: #imageLiteral(resourceName: "Len"), Job: "Pharmacy Technician")
    var neville: Friend = Friend(Name: "Neville", Age: 34, face: #imageLiteral(resourceName: "Neville"), Job: "Civil Engineer")
    var jonathan: Friend = Friend(Name: "Jonathan", Age: 32, face: #imageLiteral(resourceName: "Jonathan"), Job: "Human Resources")
    var joseph: Friend = Friend(Name: "Joseph", Age: 29, face: #imageLiteral(resourceName: "Joseph"), Job: "Best-Man")
    var aaron: Friend = Friend(Name: "Aaron", Age: 33, face: #imageLiteral(resourceName: "Aaron"), Job: "Director")
    
    // ARRAY OF FRIENDS
    var groomsMen: [Friend] = [len, neville, jonathan, joseph, aaron]
    lazy var bridesMaids: [Friend] = []
}


