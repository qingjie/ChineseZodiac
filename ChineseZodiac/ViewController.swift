//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by qingjiezhao on 6/3/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        if let var year = yearOfBirth.text.toInt(){
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        }else{
            println("123")
        }
    }
    
    
}

