//
//  ShakeMeViewController.swift
//  SegundoParcialWebServices
//
//  Created by apple on 4/2/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import Lottie

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
            animationLabel()
        }
    }
    
    func animationLabel(){
        self.shakeLabel.text = "Shaken, not stirred"
        let startAnimationView = AnimationView(name: "FirstText")
        startAnimationView.play { (finished) in
            self.shakeLabel.text = "Shaken, not stirred"
        }
    }
}
