//
//  ViewFacadeController.swift
//  MPathY
//
//  Created by Bradsky, Payton on 7/8/17.
//  Copyright © 2017 Bradsky, Payton. All rights reserved.
//

import Foundation

import UIKit

class ViewFacadeController: UIViewController{
    
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startLabel: UIButton!
    
    var seconds = 480
    var timer = Timer()
    var isTimerRunning = false
    var resumeTapped = false
    var startTapped = false
    
    
    @IBAction func startButtonTapped(_ sender: UIButton){
        if isTimerRunning == false && startTapped == false{
            runTimer()
            startTapped = true
            self.startLabel.setTitle("Pause", for: UIControlState.normal)
        }
        else if isTimerRunning == false && startTapped == true{
            runTimer()
            self.startLabel.setTitle("Pause", for: UIControlState.normal)
        }
        else if isTimerRunning == true && startTapped == true{
            timer.invalidate()
            isTimerRunning = false
            self.startLabel.setTitle("Resume",for: UIControlState.normal)
        }
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewFacadeController.updateTimer)), userInfo: nil, repeats: true)
        
        isTimerRunning = true
    }
    
    func updateTimer() {
        if seconds < 1 {
            timer.invalidate()
            isTimerRunning = false
        }
        else{
            seconds-=1
            timerLabel.text = timeString(time: TimeInterval(seconds))
        }
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton){
        timer.invalidate()
        seconds = 480
        timerLabel.text = timeString(time: TimeInterval(seconds))
        isTimerRunning = false
        self.startLabel.setTitle("Start",for: UIControlState.normal)
    }
    
    func timeString(time:TimeInterval) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i", minutes, seconds)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
