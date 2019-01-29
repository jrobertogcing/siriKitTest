//
//  BoardingViewController.swift
//  IOSSiriTest
//
//  Created by Jose González on 1/28/19.
//  Copyright © 2019 Jose Gonzalez. All rights reserved.
//

import UIKit



class BoardingViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    var counter = 0
    var timer = Timer()

    
    override func viewDidLoad() {
        super.viewDidLoad()

    timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)

    }
    
    // called every time interval from the timer
    @objc func timerAction() {
        counter += 1
        timerLabel.text = "\(counter)"
    }
    
    func cancelTimer() {
        timer.invalidate()
    }
    

}
