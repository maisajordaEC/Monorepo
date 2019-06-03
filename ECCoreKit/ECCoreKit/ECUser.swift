//
//  ECUser.swift
//  ECCoreKit
//
//  Created by Mailyn Sajorda on 03/06/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

public class ECUser: NSObject {
    public var username: String
    public var emailAddress: String
    public var age: Int
    
    public init(name: String, email:String, age:Int) {
        self.username = name
        self.emailAddress = email
        self.age = age
        
        // NewRelic
        // NewRelic.recordMetric(withName: "MetricName", category: "MetricCategory")
    }
    
    public func logUser() {
        print("Username:\(self.username)\nEmail Address:\(self.emailAddress)\nAge:\(self.age)")
    }
}
