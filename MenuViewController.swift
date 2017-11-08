//
//  MenuViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 8/30/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
//Outlets to connect buttons of Favorite view 
    @IBOutlet weak var websiteButton: UIButton!
   
    @IBOutlet weak var scheduleButton: UIButton!
    
    @IBOutlet weak var detroitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        websiteButton.imageView?.contentMode = .scaleAspectFit
        
scheduleButton.imageView?.contentMode = .scaleAspectFit
       
detroitButton.imageView?.contentMode = .scaleAspectFit
        
    }

}
