//
//  UIFont+Load.swift
//  XGArqmobUi
//
//  Created by Vero on 28/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

public extension UIFont {

     static func loadFonts() {
        registerFont(withName: "Raleway-BoldItalic", fileExtension: "ttf")
        registerFont(withName: "Raleway-SemiBold", fileExtension: "ttf")
        registerFont(withName: "Raleway-Regular", fileExtension: "ttf")
        registerFont(withName: "Raleway-SemiBoldItalic", fileExtension: "ttf")
        registerFont(withName: "Raleway-Italic", fileExtension: "ttf")
        registerFont(withName: "Raleway-Bold", fileExtension: "ttf")
    }

     static func registerFont(withName name: String, fileExtension: String) {
        let frameworkBundle = Bundle(for: self)
        let pathForResourceString = frameworkBundle.path(forResource: name, ofType: fileExtension)
        let fontData = NSData(contentsOfFile: pathForResourceString!)
        let dataProvider = CGDataProvider(data: fontData!)
        let fontRef = CGFont(dataProvider!)
        var errorRef: Unmanaged<CFError>? = nil

        if (CTFontManagerRegisterGraphicsFont(fontRef!, &errorRef) == false) {
            print("Error registering font")
        }
    }

}
