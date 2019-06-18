//
//  ECLesson.swift
//  ECTutorKit
//
//  Created by Mailyn Sajorda on 03/06/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit
import MBProgressHUD
//import UIImage_PDF
import ECCoreKit
import GoogleAnalytics

// Import static framework from Pods
import NewRelicAgent

public class ECLesson: NSObject, ECTutorKitProtocol {
    
    var currentUser: ECUser
    
    public func log() {
        print("ECLesson")
    }
    
    public init(user: ECUser) {
        currentUser = user
        GAI.sharedInstance()?.logger.logLevel = .warning
        
        // NewRelic
        NewRelic.recordMetric(withName: "MetricName", category: "MetricCategory")

    }
    
    public func isTutorKitAvailable() -> Bool {
        return true;
    }
    
    // MARK: - ECTutorKit Protocol Methods
    
    public func showMyLessons() {
        print("================= Showing MyLessons =================")
    }
    
    public func showScheduler() {
        print("================= Showing Scheduler =================")
    }
    
}

