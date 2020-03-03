//
//  ViewController.swift
//  AlertExample
//
//  Created by Shree Marella on 2020-03-02.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnShowAlert(_ sender: UIButton)
    {
        if sender.tag == 0 // show alert click
        {
          let alertController = UIAlertController(title: "Error", message:
                "Hello, world!", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Default-1", style: .default))
            alertController.addAction(UIAlertAction(title: "cancel", style: .cancel))
            alertController.addAction(UIAlertAction(title: "Default-2", style: .default))
            alertController.addAction(UIAlertAction(title: "Distructive-1", style: .destructive))
            alertController.addAction(UIAlertAction(title: "Destructive-2", style: .destructive,handler: { (sender) in print("Click Destructive-2")}))

            self.present(alertController, animated: true, completion: nil)
        }
        
        
        if sender.tag == 1// show action sheet click
        {
            let alertController = UIAlertController(title: "Error", message:
                "Hello, world!", preferredStyle: .actionSheet)
            alertController.addAction(UIAlertAction(title: "Default-1", style: .default))
            alertController.addAction(UIAlertAction(title: "cancel", style: .cancel))
            alertController.addAction(UIAlertAction(title: "Default-2", style: .default))
            alertController.addAction(UIAlertAction(title: "Distructive-1", style: .destructive))
            alertController.addAction(UIAlertAction(title: "Destructive-2", style: .destructive,handler: { (sender) in print("Click Destructive-2")}))

            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    
}

