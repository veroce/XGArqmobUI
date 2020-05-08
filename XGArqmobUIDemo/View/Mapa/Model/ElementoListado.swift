//
//  ElementoListado.swift
//  demoAr
//
//  Created by Vero on 25/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class ElementoListado: NSObject {
    
    var title: String
    var image: String?
    var localizacion: String
    var categoria: String
    
    
    init(title: String, image: String? = nil, localizacion: String, categoria: String) {
        self.title = title
        self.image = image
        self.localizacion = localizacion
        self.categoria = categoria
    }
}
