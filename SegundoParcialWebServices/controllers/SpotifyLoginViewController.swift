//
//  SpotifyLoginViewController.swift
//  SegundoParcialWebServices
//
//  Created by apple on 4/21/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SpotifyLoginViewController: VideoSplashViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupVideoBackground()
        // Do any additional setup after loading the view.
    }
    
    func setupVideoBackground(){
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "/moments", ofType: "mp4")!)
        //setup layout
        videoFrame = view.frame
        fillMode = .resizeAspectFill
        alwaysRepeat = true
        sound = true
        startTime = 2.0
        alpha = 0.8
        contentURL = url
        view.isUserInteractionEnabled = false
    }
}
