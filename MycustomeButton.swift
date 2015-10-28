//
//  MycustomeButton.swift
//  SampleApp
//
//  Created by Namit on 22/10/15.
//  Copyright © 2015 Namit. All rights reserved.
//

import Foundation
import UIKit
class MyCustomButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = 5.0;
        self.layer.borderColor = UIColor.redColor().CGColor
        self.layer.borderWidth = 1.5
        self.backgroundColor = UIColor.blueColor()
        self.tintColor = UIColor.whiteColor()
    }
}