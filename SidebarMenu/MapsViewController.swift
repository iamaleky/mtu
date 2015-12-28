//
//  MapsViewController.swift
//  МТУ (МИРЭА)
//
//  Created by admin on 12/12/15.
//  Copyright © 2015 Viemek Inc. All rights reserved.
//

import Foundation

import UIKit

class MapsViewController: UITabBarController {
    
    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = "revealToggle:"
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
}