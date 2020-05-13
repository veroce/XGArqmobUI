//
//  UIFont.swift
//  XGArqmobUi
//
//  Created by Vero on 04/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

import UIKit
import CoreText
@objc
public extension UIFont {
    
    static func loadFonts() {
        let bundle = Bundle(for: ArmobTheme.self)
        let fontNames = ["Raleway-Regular", "Raleway-Bold", "Raleway-Bold-Italic", "Raleway-Semibold", "Raleway-SemiBoldItalic","Raleway-Italic"]
        for fontName in fontNames {
            let url = bundle.url(forResource: fontName, withExtension: "ttf")
            if url != nil {
                var error: Unmanaged<CFError>?
                if let url1 = url as CFURL? {
                    CTFontManagerRegisterFontsForURL(url1, .none, &error)
                }
            }
        }
    }
    
    @objc static func largeTitleRegular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 34) ?? UIFont.systemFont(ofSize: 34.0, weight: UIFont.Weight.regular)
    }
    @objc  static func largeTitleBold() -> UIFont {
        return UIFont(name: "Raleway-Bold", size: 34) ?? UIFont.systemFont(ofSize: 34.0, weight: UIFont.Weight.bold)
    }
    @objc  static func title1Regular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 28) ?? UIFont.systemFont(ofSize: 28.0, weight: UIFont.Weight.regular)
    }
    @objc  static func title1Bold() -> UIFont {
        return UIFont(name: "Raleway-Bold", size: 28) ?? UIFont.systemFont(ofSize: 28.0, weight: UIFont.Weight.bold)
    }
    @objc  static func title2Regular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 22) ?? UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.regular)
    }
    @objc  static func title2Bold() ->UIFont {
        return UIFont(name: "Raleway-Bold", size: 22) ?? UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.bold)
    }
    @objc  static func title3Semibold() -> UIFont {
        return UIFont(name: "Raleway-Semibold", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
    }
    @objc  static func title3SemiboldItalic() -> UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
    }
    @objc  static func headlineSemibold() -> UIFont {
        return UIFont(name: "Raleway-Semibold", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
    @objc  static func headlineSemiBoldItalic() -> UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
    @objc  static func bodyRegular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.regular)
    }
    @objc  static func bodyBold() -> UIFont {
        return UIFont(name: "Raleway-Bold", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.bold)
    }
    @objc  static func bodyItalic() -> UIFont {
        return UIFont(name: "Raleway-Italic", size: 17) ?? UIFont.italicSystemFont(ofSize: 17)
    }
    @objc  static func bodySemiboldItalic() -> UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
    @objc static func bodySemibold() -> UIFont {
        return UIFont(name: "Raleway-SemiBold", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
    
    @objc static func calloutRegular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
    }
    @objc static func calloutItalic() -> UIFont {
        return UIFont(name: "Raleway-Italic", size: 16) ?? UIFont.italicSystemFont(ofSize: 16)
    }
    @objc static func calloutBold() -> UIFont {
        return UIFont(name: "Raleway-Bold", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.bold)
    }
    @objc static func calloutSemiboldItalic() -> UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
    }
    
    @objc static func subheadlineRegular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 15) ?? UIFont.systemFont(ofSize: 15)
    }
    @objc static func subheadlineItalic() -> UIFont {
        return UIFont(name: "Raleway-Italic", size: 15) ?? UIFont.italicSystemFont(ofSize: 15)
    }
    @objc static func subheadlineBold() -> UIFont {
        return UIFont(name: "Raleway-Bold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
    }
    @objc static func subheadlineSemiboldItalic() -> UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
    }
    
    @objc static func footnoteRegular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 13) ?? UIFont.systemFont(ofSize: 13)
    }
    @objc static func footnoteItalic() -> UIFont {
        return UIFont(name: "Raleway-Italic", size: 13) ?? UIFont.italicSystemFont(ofSize: 13)
    }
    @objc static func footnoteBold() -> UIFont {
        return UIFont(name: "Raleway-Bold", size: 13) ?? UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.semibold)
    }
    @objc static func footnoteSemiboldItalic() -> UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 13) ?? UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.semibold)
    }
    
    @objc static func caption1Regular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
    }
    @objc static func caption1Italic() -> UIFont {
        return UIFont(name: "Raleway-Italic", size: 12) ?? UIFont.italicSystemFont(ofSize: 12)
    }
    @objc static func caption1Semibold() -> UIFont {
        return UIFont(name: "Raleway-Semibold", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.semibold)
    }
    @objc static func caption1SemiboldItalic() -> UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.semibold)
    }
    @objc static func caption2Regular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 11) ?? UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.regular)
    }
    @objc static func caption2Italic() -> UIFont {
        return UIFont(name: "Raleway-Italic", size: 11) ?? UIFont.italicSystemFont(ofSize: 11)
    }
    @objc static func caption2Bold() -> UIFont {
        return UIFont(name: "Raleway-Bold", size: 11) ?? UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.bold)
    }
    @objc static func caption2SemiboldItalic() -> UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 11) ?? UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.semibold)
    }
}
