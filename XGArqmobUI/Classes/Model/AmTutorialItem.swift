//
//  TutorialItem.swift
//  demoAr
//
//  Created by Vero on 27/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
open class AmTutorialItem: NSObject {
    
    var image: String
    var title: String
    var body: String
    
    init(image: String, title: String, body: String) {
        self.image = image
        self.title = title
        self.body = body
    }

}
