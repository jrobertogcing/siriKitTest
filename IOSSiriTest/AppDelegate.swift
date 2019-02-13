//
//  AppDelegate.swift
//  IOSSiriTest
//
//  Created by Jose González on 1/28/19.
//  Copyright © 2019 Jose Gonzalez. All rights reserved.
//

import UIKit
import Intents

enum statusSiri:String {
    
    case none, boarding, landing, emergency
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var flagStatus: statusSiri = statusSiri.none
    var window: UIWindow?

    //SiriKIT
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        
        self.window?.rootViewController?.dismiss(animated: true, completion: nil)
        
        guard let intent = userActivity.interaction?.intent as? INStartWorkoutIntent else {
            print("AppDelegate: Start Workout Intent - FALSE")
            return false
        }
        print("AppDelegate: Start Workout Intent - TRUE")
        print(intent)
        print("Name")
        print(intent.workoutName!)
        
        
        if let intName = intent.workoutName {
            
            print(intName.spokenPhrase)
            
            if intName.spokenPhrase == "pre abordaje" {
                
               flagStatus = statusSiri.boarding
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let boardingVC: BoardingViewController = storyboard.instantiateViewController(withIdentifier: "BoardingViewController") as! BoardingViewController
            
                
                self.window?.rootViewController?.present(boardingVC, animated: true, completion: nil)
                

            } else if intName.spokenPhrase == "abordaje" {
                
                flagStatus = statusSiri.landing
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let landingVC: LandingViewController = storyboard.instantiateViewController(withIdentifier: "LandingViewController") as! LandingViewController
    
                self.window?.rootViewController?.present(landingVC, animated: true, completion: nil)

                
            } else if intName.spokenPhrase == "emergencía" {
                
                flagStatus = statusSiri.emergency
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let emergencyVC: EmergencyViewController = storyboard.instantiateViewController(withIdentifier: "EmergencyViewController") as! EmergencyViewController
                
                self.window?.rootViewController?.present(emergencyVC, animated: true, completion: nil)

            }
        }
        
        
        return true
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        if flagStatus == statusSiri.boarding {
//            
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let boardingVC: BoardingViewController = storyboard.instantiateViewController(withIdentifier: "BoardingViewController") as! BoardingViewController
//            
//            self.window?.rootViewController?.present(boardingVC, animated: true, completion: nil)
//            
//        } else if flagStatus == statusSiri.landing {
//            
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let landingVC: LandingViewController = storyboard.instantiateViewController(withIdentifier: "LandingViewController") as! LandingViewController
//            
//            self.window?.rootViewController?.present(landingVC, animated: true, completion: nil)
//            
//        } else if flagStatus == statusSiri.emergency {
//            
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let emergencyVC: EmergencyViewController = storyboard.instantiateViewController(withIdentifier: "EmergencyViewController") as! EmergencyViewController
//
//            self.window?.rootViewController?.present(emergencyVC, animated: true, completion: nil)
////
//        }
//        
//        
//        
//        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

