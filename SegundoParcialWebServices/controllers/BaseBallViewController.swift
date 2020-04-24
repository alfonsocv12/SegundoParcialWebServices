//
//  BaseBallViewController.swift
//  SegundoParcialWebServices
//
//  Created by apple on 4/23/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import SwiftySound

class BaseBallViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    
    var count = 24
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func startTimer(_ sender: Any) {
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @IBAction func Restart(_ sender: Any) {
        count = 24
        counterLabel.text = String(count)
    }
    
    @objc func updateCounter() {
        if(count > 0) {
            count-=1
            if (count < 10){
                counterLabel.text = "0"+String(count)
            }else{
                counterLabel.text = String(count)
            }
        }else{
            if let timer = self.timer{
                timer.invalidate()
                playNewSound()
            }
        }
    }
    
    func playNewSound(){
        Sound.play(file: "endgame.wav")
    }

}
