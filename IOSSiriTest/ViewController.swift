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
        
//        let string = "2018080600000000"
//        let dateFormatter:DateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyyMMddHHmmssSSS"
//        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
//        let dateFinal = dateFormatter.date(from: string)!
//        
//        print(dateFinal)
//        
        
        

        //Request Siri authorization
        INPreferences.requestSiriAuthorization { (status) in
            
            print(status)
            
        }
        //Add vocabulary
        INVocabulary.shared().setVocabularyStrings(["preabordate", "abordaje", "emergencia"], of: .workoutActivityName)

    }


}

