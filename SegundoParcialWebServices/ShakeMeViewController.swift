//
//  ShakeMeViewController.swift
//  SegundoParcialWebServices
//
//  Created by apple on 4/2/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ShakeMeViewController: UIViewController {
    @IBOutlet weak var shakeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            shakeLabel.text = "Shaken, not stirred"
        }
    }
}
