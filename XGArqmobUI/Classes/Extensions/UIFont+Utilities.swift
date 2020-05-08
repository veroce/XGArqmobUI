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
    
     static func largeTitleRegular() -> UIFont {
           return UIFont(name: "Raleway-Regular", size: 34) ?? UIFont.systemFont(ofSize: 34.0, weight: UIFont.Weight.regular)
       }
       static func largeTitleBold() -> UIFont {
           return UIFont(name: "Raleway-Bold", size: 34) ?? UIFont.systemFont(ofSize: 34.0, weight: UIFont.Weight.bold)
       }
       static func title1Regular() -> UIFont {
           return UIFont(name: "Raleway-Regular", size: 28) ?? UIFont.systemFont(ofSize: 28.0, weight: UIFont.Weight.regular)
       }
       static func title1Bold() -> UIFont {
           return UIFont(name: "Raleway-Bold", size: 28) ?? UIFont.systemFont(ofSize: 28.0, weight: UIFont.Weight.bold)
       }
       static func title2Regular() -> UIFont {
           return UIFont(name: "Raleway-Regular", size: 22) ?? UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.regular)
       }
       static func title2Bold() ->UIFont {
           return UIFont(name: "Raleway-Bold", size: 22) ?? UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.bold)
       }
       static func title3Semibold() -> UIFont {
           return UIFont(name: "Raleway-Semibold", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
       }
       static func title3SemiboldItalic() -> UIFont {
           return UIFont(name: "Raleway-SemiBoldItalic", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
       }
       static func headlineSemibold() -> UIFont {
           return UIFont(name: "Raleway-Semibold", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
       }
       static func headlineSemiBoldItalic() -> UIFont {
           return UIFont(name: "Raleway-SemiBoldItalic", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
       }
       static func bodyRegular() -> UIFont {
        return UIFont(name: "Raleway-Regular", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.regular)
       }
       static func bodyBold() -> UIFont {
           return UIFont(name: "Raleway-Bold", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.bold)
       }
       static func bodyItalic() -> UIFont {
           return UIFont(name: "Raleway-Italic", size: 17) ?? UIFont.italicSystemFont(ofSize: 17)
       }
       static func bodySemiboldItalic() -> UIFont {
           return UIFont(name: "Raleway-SemiBoldItalic", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
       }
    static func bodySemibold() -> UIFont {
        return UIFont(name: "Raleway-SemiBold", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
       
       static func calloutRegular() -> UIFont {
           return UIFont(name: "Raleway-Regular", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
       }
       static func calloutItalic() -> UIFont {
           return UIFont(name: "Raleway-Italic", size: 16) ?? UIFont.italicSystemFont(ofSize: 16)
       }
       static func calloutBold() -> UIFont {
           return UIFont(name: "Raleway-Bold", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.bold)
       }
       static func calloutSemiboldItalic() -> UIFont {
           return UIFont(name: "Raleway-SemiBoldItalic", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
       }
       
       static func subheadlineRegular() -> UIFont {
           return UIFont(name: "Raleway-Regular", size: 15) ?? UIFont.systemFont(ofSize: 15)
       }
       static func subheadlineItalic() -> UIFont {
           return UIFont(name: "Raleway-Italic", size: 15) ?? UIFont.italicSystemFont(ofSize: 15)
       }
       static func subheadlineBold() -> UIFont {
           return UIFont(name: "Raleway-Bold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
       }
       static func subheadlineSemiboldItalic() -> UIFont {
           return UIFont(name: "Raleway-SemiBoldItalic", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
       }
       
       static func footnoteRegular() -> UIFont {
           return UIFont(name: "Raleway-Regular", size: 13) ?? UIFont.systemFont(ofSize: 13)
       }
       static func footnoteItalic() -> UIFont {
           return UIFont(name: "Raleway-Italic", size: 13) ?? UIFont.italicSystemFont(ofSize: 13)
       }
       static func footnoteBold() -> UIFont {
              return UIFont(name: "Raleway-Bold", size: 13) ?? UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.semibold)
          }
       static func footnoteSemiboldItalic() -> UIFont {
           return UIFont(name: "Raleway-SemiBoldItalic", size: 13) ?? UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.semibold)
       }
       
       static func caption1Regular() -> UIFont {
           return UIFont(name: "Raleway-Regular", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
       }
       static func caption1Italic() -> UIFont {
           return UIFont(name: "Raleway-Italic", size: 12) ?? UIFont.italicSystemFont(ofSize: 12)
       }
       static func caption1Semibold() -> UIFont {
           return UIFont(name: "Raleway-Semibold", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.semibold)
       }
       static func caption1SemiboldItalic() -> UIFont {
           return UIFont(name: "Raleway-SemiBoldItalic", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.semibold)
       }
       static func caption2Regular() -> UIFont {
           return UIFont(name: "Raleway-Regular", size: 11) ?? UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.regular)
       }
       static func caption2Italic() -> UIFont {
           return UIFont(name: "Raleway-Italic", size: 11) ?? UIFont.italicSystemFont(ofSize: 11)
       }
       static func caption2Bold() -> UIFont {
           return UIFont(name: "Raleway-Bold", size: 11) ?? UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.bold)
       }
       static func caption2SemiboldItalic() -> UIFont {
           return UIFont(name: "Raleway-SemiBoldItalic", size: 11) ?? UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.semibold)
       }
}
