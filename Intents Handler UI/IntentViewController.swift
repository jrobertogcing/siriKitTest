//
//  IntentViewController.swift
//  Intents Handler UI
//
//  Created by Jose González on 1/30/19.
//  Copyright © 2019 Jose Gonzalez. All rights reserved.
//

import IntentsUI

// As an example, this extension's Info.plist has been configured to handle interactions for INSendMessageIntent.
// You will want to replace this or add other intents as appropriate.
// The intents whose interactions you wish to handle must be declared in the extension's Info.plist.

// You can test this example integration by saying things to Siri like:
// "Send a message using <myApp>"

class IntentViewController: UIViewController, INUIHostedViewControlling {
    
    @IBOutlet weak var contentLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    // MARK: - INUIHostedViewControlling
    
    // Prepare your view controller for the interaction to handle.
    func configureView(for parameters: Set<INParameter>, of interaction: INInteraction, interactiveBehavior: INUIInteractiveBehavior, context: INUIHostedViewContext, completion: @escaping (Bool, Set<INParameter>, CGSize) -> Void) {
        // Do configuration here, including preparing views and calculating a desired size for presentation.
        
        
        
        
        completion(true, parameters, self.desiredSize)
    }
    
    var desiredSize: CGSize {
        return self.extensionContext!.hostedViewMaximumAllowedSize
    }
    
//
//    if let paymentIntent = interaction.intent as? INSendPaymentIntent {
//        // If any of this properties is not set, use the default UI.
//        guard let amount = paymentIntent.currencyAmount?.amount, let currency = paymentIntent.currencyAmount?.currencyCode, let name = paymentIntent.payee?.displayName else {
//            return completion(CGSize.zero)
//        }
//        let paymentDescription = "\(amount)\(currency) to \(name)"
//        contentLabel.text = paymentDescription
//    }
//    if let completion = completion {
//        completion(self.desiredSize)
//    }
   
}
