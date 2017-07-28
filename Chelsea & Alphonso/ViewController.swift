//
//  ViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 7/22/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabelOutlet: UILabel!
    let formatter = DateFormatter()
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainImage2: UIImageView!
    
    let userCalender = Calendar.current
    
    let requestedComponent : Set<Calendar.Component> = [
        Calendar.Component.month,
        Calendar.Component.day,
        Calendar.Component.hour,
        Calendar.Component.minute,
        Calendar.Component.second
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImage2.image = #imageLiteral(resourceName: "ChelseaAlphonso2")
        mainImage.image = #imageLiteral(resourceName: "ChelseaAlphonso")
        // Do any additional setup after loading the view, typically from a nib.
        let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(printTime), userInfo: nil, repeats: true)
        
        timer.fire()
        
            }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainImage.center.x -= view.bounds.width
        mainImage2.center.x += view.bounds.width
    }
    
    //This animates the specified objects to there original position UIView.animate(withDuration:1)
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 8.5) {
            self.mainImage.center.x += self.view.bounds.width
        UIView.animate(withDuration: 8.5) {
                self.mainImage2.center.x -= self.view.bounds.width
            }

    }
    }
   
    func printTime() {
        formatter.dateFormat = "MM/dd/yy hh:mm:ss a"
        let startTime = Date()
        let endTime = formatter.date(from: "04/21/18 12:00:00 a")
        let timeDifference = userCalender.dateComponents(requestedComponent, from: startTime, to: endTime!)
        
        dateLabelOutlet.text = "\(timeDifference.month!) Months \(timeDifference.day!) Days \(timeDifference.minute!) Min \(timeDifference.second!) Sec"
    }


    }



