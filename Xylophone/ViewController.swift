//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        //Call the func and pass the name of the sound to it (which is equal to the btn title).
        playSound(btnName: sender.currentTitle!)
    }
    
    //Create a func that takes the name of sound (btn title).
    func playSound(btnName: String) {
        let url = Bundle.main.url(forResource: btnName, withExtension: "wav")
        player = AVPlayer(url: url!)
        player.play()
    }

}

