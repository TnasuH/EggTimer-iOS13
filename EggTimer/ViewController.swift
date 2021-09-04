//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelUI: UILabel!
    @IBOutlet weak var progressBarUI: UIProgressView!
    
    let eggTimes = ["Soft":320,"Medium":420,"Hard":720]
    
    var secondsRemaining = 0
    
    var timer: Timer = Timer()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.secondsRemaining = self.eggTimes[sender.currentTitle!]!
        self.timer.invalidate()
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            
            self.progressBarUI.progress =
                Float(1) - ( Float(self.secondsRemaining) / Float(self.eggTimes[sender.currentTitle!]!))
            print("\(self.secondsRemaining) seconds..")
            self.secondsRemaining = self.secondsRemaining - 1
            if self.secondsRemaining < 0 {
                self.labelUI.text = "Time Up!"
                timer.invalidate()
            }
        }
    }
    
    
    
    
}
