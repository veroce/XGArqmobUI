//
//  AmAboutUsShared.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

class AmAboutUsShared: NSObject {

    static let shared = AmAboutUsShared()
    var customStyle: AmAboutUsStyle = AmAboutUsStyle()
    
    override init() {
        
    }
}
