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
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
            // Dim the button to half opacity
            sender.alpha = 0.5
            
            playSound(soundName: sender.currentTitle!)
            
            // Print "Start" immediately
            print("Start")
            
            // Restore the button opacity after 0.2 seconds and print "End"
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                print("End")
                sender.alpha = 1.0
            }
        }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
