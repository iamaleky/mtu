//
//  AboutViewController.swift
//  МТУ (МИРЭА)
//
//  Created by admin on 12/12/15.
//  Copyright © 2015 Viemek Inc. All rights reserved.
//


import Foundation
import MessageUI
import UIKit

class AboutController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBAction func cancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func showEmail(sender: AnyObject) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        
        mailComposerVC.setToRecipients(["ivan@aleksandrov.se"])
        mailComposerVC.setSubject("Предложение по улучшению приложения МТУ (МИРЭА)")
        mailComposerVC.setMessageBody("Привет :) <br /><br /> Я считаю, что стоит улучшить ", isHTML: true)
        
        return mailComposerVC
    }
    
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Упс :(", message: "Что-то произошло, и мы не смогли доставить письмо. Проверьте соединение с интернетом и пострайтесь отправить ещё раз.", delegate: self, cancelButtonTitle: "Сейчас попробую ещё раз")
        sendMailErrorAlert.show()
    }
    

    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}