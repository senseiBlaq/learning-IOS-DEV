//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720] // dictionary for the different types of egg times
    var totalTime = 0 // Start countdown from 60 seconds
    var secondsPassed = 0
    var timer = Timer() // instance of the class NSObject
    // eggImageView
    @IBOutlet weak var hardEgg: UIImageView!
    @IBOutlet weak var mediumEgg: UIImageView!
    @IBOutlet weak var softEgg: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var progressBarView: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        // Reset
        timer.invalidate()
        titleView.text = "How do you like your eggs?"
        softEgg.alpha = 1
        mediumEgg.alpha = 1
        hardEgg.alpha = 1
        progressBarView.setProgress(0.0, animated: true)
        secondsPassed = 0
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!  // sets the time remaining for the type of egg
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(startCountdown), userInfo:nil, repeats: true)
    }
    
    @objc func startCountdown() { // this countdown the timer
        if totalTime ==  300 {
            if secondsPassed < totalTime  {
                secondsPassed += 1
                
                let progressPercentage = Float(secondsPassed) / Float(totalTime)
                progressBarView.setProgress(progressPercentage, animated: true)
                
                softEgg.alpha = CGFloat(progressPercentage)
            }
            else {
                timer.invalidate()
                titleView.text = " DONE 🎉"
            }
        }
        if totalTime == 420 {
            if secondsPassed < totalTime  {
                secondsPassed += 1
                
                let progressPercentage = Float(secondsPassed) / Float(totalTime)
                progressBarView.setProgress(progressPercentage, animated: true)
                
                mediumEgg.alpha = CGFloat(progressPercentage)
            }
            else {
                timer.invalidate()
                titleView.text = " DONE 🎉"
            }
        }
        if totalTime == 720 {
            if secondsPassed < totalTime  {
                secondsPassed += 1
                    
                let progressPercentage = Float(secondsPassed) / Float(totalTime)
                progressBarView.setProgress(progressPercentage, animated: true)
                    
                hardEgg.alpha = CGFloat(progressPercentage)
            }
            else {
                timer.invalidate()
                titleView.text = " DONE 🎉"
            }
        }
    }
}

