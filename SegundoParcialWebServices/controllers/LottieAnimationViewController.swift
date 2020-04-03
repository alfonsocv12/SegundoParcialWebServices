//
//  LottieAnimationViewController.swift
//  SegundoParcialWebServices
//
//  Created by apple on 4/3/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import Lottie

class LottieAnimationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let animationView = AnimationView(name: "servishero-loading")
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        
        view.addSubview(animationView)
        
        animationView.play()
    }

}
