//
//  BellsViewController.swift
//  МТУ (МИРЭА)
//
//  Created by I A on 12/28/15.
//  Copyright © 2015 Viemek Inc. All rights reserved.
//

import Foundation
import UIKit



class BellsViewController: UITableViewController {
    
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