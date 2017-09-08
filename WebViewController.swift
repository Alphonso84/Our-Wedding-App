//
//  WebViewController.swift
//  Chelsea & Alphonso
//
//  Created by user on 8/26/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import Foundation
import UIKit


class WebViewController: UIViewController {


    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:"https://fonzman1984.wixsite.com/mysite")
        myWebView.loadRequest(URLRequest(url: url!))
    }


}






