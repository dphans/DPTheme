//
//  ViewController.swift
//  DemoDPTheme
//
//  Created by @baophan94 on 6/24/15.
//  Copyright (c) 2015 @baophan94. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak let profileImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = profileImage.frame.size.height/2
        profileImage.layer.borderColor = UIColor.whiteColor().CGColor
        profileImage.layer.borderWidth = 3
        
    }

}
