//
//  NewsTableViewController.swift
//  МТУ (МИРЭА)
//
//  Created by admin on 12/12/15.
//  Copyright © 2015 Viemek Inc. All rights reserved.
//

import UIKit
import Alamofire

class NewsTableViewController: UITableViewController {
    @IBOutlet var menuButton:UIBarButtonItem!
    @IBOutlet var extraButton:UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        if revealViewController() != nil {
            
//            revealViewController().rearViewRevealWidth = 62
            menuButton.target = revealViewController()
            menuButton.action = "revealToggle:"
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return 4
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! NewsTableViewCell

        // Configure the cell...
        if indexPath.row == 0 {
            cell.postImageView.image = UIImage(data: NSData(contentsOfURL: NSURL(string:"http://cdn.fishki.net/upload/post/201406/23/1279678/xYjUKHJssWQ.jpg")!)!)
            cell.postTitleLabel.text = "Охеренно крутая лекция от господинa Крумакова"
            cell.authorLabel.text = "Арнольд Генрихович Василенко"

        } else if indexPath.row == 1 {
            cell.postImageView.image = UIImage(data: NSData(contentsOfURL: NSURL(string:"http://oboprom.ru/sites/default/files/2.jpg")!)!)
            cell.postTitleLabel.text = "Как продать курсы по Битриксу усатым мужчинкам"
            cell.authorLabel.text = "Евгений Папапопулос"
            
        } else if indexPath.row == 2 {
            cell.postImageView.image = UIImage(data: NSData(contentsOfURL: NSURL(string:"https://pp.vk.me/c406219/v406219853/6948/ae7o-OJmmYc.jpg")!)!)
            cell.postTitleLabel.text = "Чпок-чпок или как соблазнить девушку за полчаса"
            cell.authorLabel.text = "Гена Зюзин"
            
        } else {
            cell.postImageView.image = UIImage(data: NSData(contentsOfURL: NSURL(string:"http://www.pics.ru/wp-content/uploads/2015/03/Kotik-kesha.jpg")!)!)
            cell.postTitleLabel.text = "Сколько волка не корми — все равно он хуже девушки"
            cell.authorLabel.text = "Никита Геннадьевич Петров"
            
        }

        return cell
    }

}