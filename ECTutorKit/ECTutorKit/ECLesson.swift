//
//  ECLesson.swift
//  ECTutorKit
//
//  Created by Mailyn Sajorda on 03/06/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit
import MBProgressHUD
import ECCoreKit

public class ECLesson: NSObject {
    
    var currentUser: ECUser
    
    public func log() {
        print("ECLesson")
    }
    
    public init(user: ECUser) {
        currentUser = user
    }
}
