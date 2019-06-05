//
//  ViewController.swift
//  EnglishCentralApp
//
//  Created by Mailyn Sajorda on 03/06/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit
import MBProgressHUD
import UIImage_PDF
import ECCoreKit
import ECTutorKit
import GoogleAnalytics
import NewRelicAgent

class ViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailAddressLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    let user = ECUser.init(name: "mai_sajorda", email: "mailyn.sajorda@englishcentral.com", age: 12)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.user.logUser()
        
        let lesson = ECLesson.init(user: self.user)
        lesson.log()
        
        // NewRelic
        NewRelic.recordMetric(withName: "MetricName", category: "MetricCategory")
    }

    @IBAction func showDetails(_ sender: Any) {
        usernameLabel.text = user.username
        emailAddressLabel.text = user.emailAddress
        ageLabel.text = "\(user.age)"
    }
}

