//
//  SecondViewController.swift
//  AlertExample
//
//  Created by Shree Marella on 2020-03-02.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imgCircus: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgCircus.image = UIImage(named: "lion")
        //imgCircus.backgroundColor = UIColor.red
        imgCircus.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)

        // Do any additional setup after loading the view.
    }
    @IBAction func segImageChange(_ sender: UISegmentedControl)
    {
        displayImage(index: sender.selectedSegmentIndex)
    }
    
    @IBAction func slideChangeImage(_ sender: UISlider)
    {
        //print(sender.value)
        let n = Int(sender.value)
        displayImage(index: n)
        //print(Int(sender.value))
    }
    
    private func displayImage(index: Int)
    {
        var imageName = String()
        switch  index {
        case 0:
            imageName="lion"
            case 1:
            imageName="gorilla"
            case 2:
            imageName="home"
            case 3:
            imageName="elephant"
            case 4:
            imageName="ice cream"
        default:
            print("No Image Selected")
            
        }
        self.imgCircus.image = UIImage(named: imageName)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
