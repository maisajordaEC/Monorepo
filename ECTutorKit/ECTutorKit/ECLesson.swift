//
//  ECLesson.swift
//  ECTutorKit
//
//  Created by Mailyn Sajorda on 03/06/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit
import MBProgressHUD
import UIImage_PDF
import ECCoreKit
import GoogleAnalytics

public class ECLesson: NSObject {
    
    var currentUser: ECUser
    
    public func log() {
        print("ECLesson")
    }
    
    public init(user: ECUser) {
        currentUser = user
        GAI.sharedInstance()?.logger.logLevel = .warning
    }
}
