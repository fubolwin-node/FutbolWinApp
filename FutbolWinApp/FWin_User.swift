//
//  FW_User.swift
//  FutbolWinApp
//
//  Created by IngR10 on 1/14/16.
//  Copyright © 2016 Innovatie. All rights reserved.
//

import UIKit


class FWin_User: NSObject {
    
    var userName: String? = ""
    var password: String? = ""
    

    override init() {
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init()
        if let userName = aDecoder.decodeObjectForKey("userName") as? String {
            self.userName = userName
        }
        if let password = aDecoder.decodeObjectForKey("password") as? String {
            self.password = password
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        if let userName = self.userName {
            aCoder.encodeObject(userName, forKey: "userName")
        }
        if let password = self.password {
            aCoder.encodeObject(password, forKey: "password")
        }
    }
    
}

