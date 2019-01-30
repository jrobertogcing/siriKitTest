//
//  ViewController.swift
//  IOSSiriTest
//
//  Created by Jose González on 1/28/19.
//  Copyright © 2019 Jose Gonzalez. All rights reserved.
//

import UIKit
import Intents
import Firebase
import Crashlytics
import Fabric

class ViewController: UIViewController {

    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let button = UIButton(type: .roundedRect)
//        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
//        button.setTitle("Crash", for: [])
//        button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
//        view.addSubview(button)
        

        //Request Siri authorization
        INPreferences.requestSiriAuthorization { (status) in
            
            print(status)
            
        }
        //Add vocabulary
        INVocabulary.shared().setVocabularyStrings(["boarding", "landing", "emergency"], of: .workoutActivityName)

    }
    
    @IBAction func crashButtonTapped(_ sender: UIButton) {
        
        Crashlytics.sharedInstance().crash()
    }
    

}

