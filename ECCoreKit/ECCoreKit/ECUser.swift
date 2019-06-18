//
//  ECUser.swift
//  ECCoreKit
//
//  Created by Mailyn Sajorda on 03/06/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit
import MBProgressHUD
import SwiftyJSON


// Import manually added frameworks
import AudioStreamer
import OAuthCore
import Jwt
import ECReachability
import RNCryptor
import TTTAttributedLabel
import WebViewJavascriptBridge

public class ECUser: NSObject {
    public var username: String
    public var emailAddress: String
    public var age: Int
    
    public init(name: String, email:String, age:Int) {
        self.username = name
        self.emailAddress = email
        self.age = age
    }
    
    public func logUser() {
        print("Username:\(self.username)\nEmail Address:\(self.emailAddress)\nAge:\(self.age)")
    }
}
