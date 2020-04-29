//
//  VersionInfo.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

public class AmVersionInfo: NSObject {
    
    var version: String
    var versionInfo: String
    
    public init(version: String, versionInfo: String) {
        self.version = version
        self.versionInfo = versionInfo
    }

}
