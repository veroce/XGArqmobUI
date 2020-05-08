//
//  MenuItem.swift
//  demoAr
//
//  Created by Vero on 17/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class MenuItem: NSObject {
    
    var title: String
    var icon: String
    var identifier: String
    
    init(title: String, icon:String, identifier: String) {
        self.title = title;
        self.icon = icon
        self.identifier = identifier
    }

}
