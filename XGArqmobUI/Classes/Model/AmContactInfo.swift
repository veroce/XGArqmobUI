//
//  ContactInfo.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
open class AmContactInfo: NSObject {
    
    var icon: String
    var info: String
    var type: String
    
    
    @objc public init(icon: String, info: String, type: String) {
        self.icon = icon
        self.info = info
        self.type = type
    }

}
