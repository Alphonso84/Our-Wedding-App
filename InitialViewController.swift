//
//  InitialViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 9/9/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
// This method performs a Segue to a new viewController
    func switchViews() {
        DispatchQueue.main.async() {
            self.performSegue(withIdentifier: "initialSegue", sender: self)
            
        }
    }

    
    override func viewDidLoad() {
        
        //Using a timer to call the above method after a specified time interval
        Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector (switchViews), userInfo: nil, repeats: true)
    
            }

}
