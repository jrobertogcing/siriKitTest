//
//  ViewController.swift
//  IOSSiriTest
//
//  Created by Jose González on 1/28/19.
//  Copyright © 2019 Jose Gonzalez. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Request Siri authorization
        INPreferences.requestSiriAuthorization { (status) in
            
            print(status)
            
        }
        // Comando ejemplo : Empezar entrenamiento de abordaje en Aeromexico
        //Add vocabulary
        INVocabulary.shared().setVocabularyStrings(["cat", "pre abordaje", "guías maestras", "emergencia"], of: .workoutActivityName)

    }


}

