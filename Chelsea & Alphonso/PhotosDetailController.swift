//
//  PhotosDetailController.swift
//  Chelsea & Alphonso
//
//  Created by user on 10/14/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class PhotosDetailController: UIViewController {
   
    
    @IBOutlet var myPhotos: UIImageView!
    var photo: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()

        myPhotos.image = photo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
