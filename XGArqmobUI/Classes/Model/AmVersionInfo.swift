//
//  VersionInfo.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
open class AmVersionInfo: NSObject {
    
    var version: String
    var versionInfo: String
    
    @objc public init(version: String, versionInfo: String) {
        self.version = version
        self.versionInfo = versionInfo
    }

}
