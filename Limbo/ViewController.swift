//
//  ViewController.swift
//  Limbo
//
//  Created by Neil van Beinum on 08/05/2015.
//  Copyright (c) 2015 Neil van Beinum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var limbLabel : UILabel!
    @IBOutlet var limbButton : UIButton!
    
    @IBOutlet var limbPatternLengthLabel : UILabel!
    @IBOutlet var limbPatternLengthStepper : UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func limbButtonTapped(sender : AnyObject) {
        let limbPattern = LimboModel(limbPatternLength: Int(limbPatternLengthStepper.value)).limbPattern()
        
        limbLabel.text = "\n".join(limbPattern)
    }
    
    @IBAction func limbPatternLengthStepperValueChanged(sender : AnyObject) {
        limbPatternLengthLabel.text = limbPatternLengthStepper.value.description
    }
}