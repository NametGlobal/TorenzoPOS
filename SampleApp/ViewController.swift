//
//  ViewController.swift
//  SampleApp
//
//  Created by Namit on 22/10/15.
//  Copyright © 2015 Namit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnfirst: UIButton!
    
    @IBOutlet weak var btnsecond: UIButton!
    
    @IBOutlet weak var btnthird: UIButton!
    
    @IBOutlet weak var btnfourth: UIButton!
    
    @IBOutlet weak var btnfifth: UIButton!
    
    @IBOutlet weak var btnsix: UIButton!
    
    @IBOutlet weak var btnseven: UIButton!
    
    @IBOutlet weak var btneight: UIButton!
    
    @IBOutlet weak var btnnine: UIButton!
    
    @IBOutlet weak var btnprev: UIButton!
    
    @IBOutlet weak var btnzero: UIButton!
    
    @IBOutlet weak var btnnext: UIButton!
    
    @IBOutlet weak var btnclockin: UIButton!
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        btnfirst.layer.borderWidth=2
        btnfirst.layer.borderColor = UIColor.whiteColor().CGColor
        btnfirst.layer.cornerRadius = 13
        
        btnsecond.layer.borderWidth = 2
        btnsecond.layer.borderColor = UIColor.whiteColor().CGColor
        btnsecond.layer.cornerRadius = 13
        
        btnthird.layer.borderWidth=2
        btnthird.layer.borderColor = UIColor.whiteColor().CGColor
        btnthird.layer.cornerRadius = 13
        
        btnfourth.layer.borderWidth=2
        btnfourth.layer.borderColor = UIColor.whiteColor().CGColor
        btnfourth.layer.cornerRadius = 13
        
        btnfifth.layer.borderWidth=2
        btnfifth.layer.borderColor = UIColor.whiteColor().CGColor
        btnfifth.layer.cornerRadius = 13
        
        btnsix.layer.borderWidth=2
        btnsix.layer.borderColor = UIColor.whiteColor().CGColor
        btnsix.layer.cornerRadius = 13
        
        btnseven.layer.borderWidth=2
        btnseven.layer.borderColor = UIColor.whiteColor().CGColor
        btnseven.layer.cornerRadius = 13
        
        btneight.layer.borderWidth=2
        btneight.layer.borderColor = UIColor.whiteColor().CGColor
        btneight.layer.cornerRadius = 13
        
        btnnine.layer.borderWidth=2
        btnnine.layer.borderColor = UIColor.whiteColor().CGColor
        btnnine.layer.cornerRadius = 13
        
        btnprev.layer.borderWidth=2
        btnprev.layer.borderColor = UIColor.whiteColor().CGColor
        btnprev.layer.cornerRadius = 13
        
        btnzero.layer.borderWidth=2
        btnzero.layer.borderColor = UIColor.whiteColor().CGColor
        btnzero.layer.cornerRadius = 13
        
        btnnext.layer.borderWidth=2
        btnnext.layer.borderColor = UIColor.whiteColor().CGColor
        btnnext.layer.cornerRadius = 13
        
        
        btnclockin.layer.borderWidth=2
        btnclockin.layer.borderColor = UIColor.whiteColor().CGColor
        btnclockin.layer.cornerRadius = 13
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction func clockin(sender: AnyObject) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

