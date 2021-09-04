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
    
    let eggTimes = ["Soft":5,"Medium":420,"Hard":720]
    
    var secondsRemaining = 0
    
    var timer: Timer = Timer()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.secondsRemaining = self.eggTimes[sender.currentTitle!]!
        self.timer.invalidate()
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            print("\(self.secondsRemaining) seconds..")
            self.secondsRemaining = self.secondsRemaining - 1
            if self.secondsRemaining < 0 {
                self.labelUI.text = "Time Up!"
                timer.invalidate()
                
            }
        }
    }
    
    
    
    
}
