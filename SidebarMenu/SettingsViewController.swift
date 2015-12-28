//
//  SettingsViewController.swift
//  МТУ (МИРЭА)
//
//  Created by I A on 12/28/15.
//  Copyright © 2015 Viemek Inc. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = "revealToggle:"
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    
    @IBAction func showActionSheet(sender: AnyObject) {

        let optionMenu = UIAlertController(title: nil, message: "Выберите, пожалуйста, стартовый экран", preferredStyle: .ActionSheet)
        
        let newsAction = UIAlertAction(title: "Новости", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            print("Старт с новостей")
        })
        let scheduleAction = UIAlertAction(title: "Расписание занятий", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            print("Старт с расписания")
        })
        let mapAction = UIAlertAction(title: "Карта кампуса", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            print("Старт с карты")
        })
        let timeAction = UIAlertAction(title: "Время занятий", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            print("Старт с расписания звонков")
        })
        let LastAction = UIAlertAction(title: "Последний открытый", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            print("Старт с последенего открытого экрана")
        })

        let cancelAction = UIAlertAction(title: "Отмена", style: .Cancel, handler: {
            (alert: UIAlertAction) -> Void in
            print("Отмена")
        })
        
        optionMenu.addAction(newsAction)
        optionMenu.addAction(scheduleAction)
        optionMenu.addAction(mapAction)
        optionMenu.addAction(timeAction)
        optionMenu.addAction(LastAction)
        optionMenu.addAction(cancelAction)
        
        
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
