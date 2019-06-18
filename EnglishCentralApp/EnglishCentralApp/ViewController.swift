//
//  ViewController.swift
//  EnglishCentralApp
//
//  Created by Mailyn Sajorda on 03/06/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

import ECCoreKit
import ECTutorKit
import NewRelicAgent
import GoogleAnalytics
//import UIImage_PDF

class ViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailAddressLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    let user = ECUser.init(name: "mai_sajorda", email: "mailyn.sajorda@englishcentral.com", age: 12)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.user.logUser()
        
        var tutorKit:ECTutorKitProtocol?
        let tutorKitRequired:NSString = Bundle.main.infoDictionary?["ECTutor Enabled"] as! NSString
        print("TUTOR KIT ENABLED = \(tutorKitRequired)")
        if tutorKitRequired.boolValue {
            tutorKit = ECLesson.init(user: self.user)
        }

        tutorKit?.showScheduler()
        tutorKit?.showMyLessons()
        
        // NewRelic
        NewRelic.recordMetric(withName: "MetricName", category: "MetricCategory")
    }

    @IBAction func showDetails(_ sender: Any) {
        usernameLabel.text = user.username
        emailAddressLabel.text = user.emailAddress
        ageLabel.text = "\(user.age)"
    }
    
    func logAllFrameworks() {
        for bundle in Bundle.allFrameworks {
            print(bundle.bundlePath)
//            if ((bundle.classNamed("SKStoreProductViewController")) != nil) {
//                return true;
//            }
        }
    }
}
