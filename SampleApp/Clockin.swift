//
//  ViewController.swift
//  SampleApp
//
//  Created by Namit on 22/10/15.
//  Copyright © 2015 Namit. All rights reserved.
//

import UIKit



class Clockin: UIViewController {
    
    
    @IBOutlet weak var btnserver: UIButton!
    
    @IBOutlet weak var btnkitchen: UIButton!
    @IBOutlet weak var btncashier: UIButton!
    @IBOutlet weak var btnwaiter: UIButton!
    @IBOutlet weak var btncancel: UIButton!
    
    override func viewDidLoad() {
        
        btnserver.layer.borderWidth=2
        btnserver.layer.borderColor = UIColor.whiteColor().CGColor
        btnserver.layer.cornerRadius = 13
        btnserver.layer.backgroundColor=UIColor.blueColor().CGColor
        
        btnkitchen.layer.borderWidth=2
        btnkitchen.layer.borderColor = UIColor.whiteColor().CGColor
        btnkitchen.layer.cornerRadius = 13
        btnkitchen.layer.backgroundColor=UIColor.blueColor().CGColor

        btncashier.layer.borderWidth=2
        btncashier.layer.borderColor = UIColor.whiteColor().CGColor
        btncashier.layer.cornerRadius = 13
        btncashier.layer.backgroundColor=UIColor.blueColor().CGColor

        btnwaiter.layer.borderWidth=2
        btnwaiter.layer.borderColor = UIColor.whiteColor().CGColor
        btnwaiter.layer.cornerRadius = 13
        btnwaiter.layer.backgroundColor=UIColor.blueColor().CGColor

        btncancel.layer.borderWidth=2
        btncancel.layer.borderColor = UIColor.blueColor().CGColor
        btncancel.layer.cornerRadius = 13
      
        
        
        super.viewDidLoad()
    }
           override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

