//
//  Theme.swift
//  autocaravanas
//
//  Created by Verónica Rodríguez Cepeda on 19/11/2019.
//  Copyright © 2019 Sixtema All rights reserved.
//

import UIKit

public enum Theme: Int {
    case `default`
    
    private enum Keys {
        static let selectedTheme = "SelectedTheme"
    }
    
    public static var current: Theme {
        let storedTheme = UserDefaults.standard.integer(forKey: Keys.selectedTheme)
        return Theme(rawValue: storedTheme) ?? .default
    }
    
    public var largeTitleRegular: UIFont {
        return UIFont(name: "Raleway-Regular", size: 34) ?? UIFont.systemFont(ofSize: 34.0, weight: UIFont.Weight.regular)
    }
    public var largeTitleBold: UIFont {
        return UIFont(name: "Raleway-Bold", size: 34) ?? UIFont.systemFont(ofSize: 34.0, weight: UIFont.Weight.bold)
    }
    public var title1Regular: UIFont {
        return UIFont(name: "Raleway-Regular", size: 28) ?? UIFont.systemFont(ofSize: 28.0, weight: UIFont.Weight.regular)
    }
    public var title1Bold: UIFont {
        return UIFont(name: "Raleway-Bold", size: 28) ?? UIFont.systemFont(ofSize: 28.0, weight: UIFont.Weight.bold)
    }
    public var title2Regular: UIFont {
        return UIFont(name: "Raleway-Regular", size: 22) ?? UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.regular)
    }
   public var title2Bold: UIFont {
        return UIFont(name: "Raleway-Bold", size: 22) ?? UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.bold)
    }
    public var title3Semibold: UIFont {
        return UIFont(name: "Raleway-Semibold", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
    }
   public var title3SemiboldItalic: UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
    }
    
   public var headlineSemibold: UIFont {
        return UIFont(name: "Raleway-Semibold", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
   public var headlineSemiBoldItalic: UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
   public var bodyRegular: UIFont {
        return UIFont(name: "Raleway-Regular", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
   public var bodyBold: UIFont {
        return UIFont(name: "Raleway-Bold", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
   public var bodyItalic: UIFont {
        return UIFont(name: "Raleway-Italic", size: 17) ?? UIFont.italicSystemFont(ofSize: 17)
    }
   public var bodySemiboldItalic: UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 17) ?? UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
    }
    
   public var calloutRegular: UIFont {
        return UIFont(name: "Raleway-Regular", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
    }
   public var calloutItalic: UIFont {
        return UIFont(name: "Raleway-Italic", size: 16) ?? UIFont.italicSystemFont(ofSize: 16)
    }
   public var calloutBold: UIFont {
        return UIFont(name: "Raleway-Bold", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
    }
   public var calloutSemiboldItalic: UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
    }
    
  public var subheadlineRegular: UIFont {
        return UIFont(name: "Raleway-Regular", size: 15) ?? UIFont.systemFont(ofSize: 15)
    }
   public var subheadlineItalic: UIFont {
        return UIFont(name: "Raleway-Italic", size: 15) ?? UIFont.italicSystemFont(ofSize: 15)
    }
   public var subheadlineBold: UIFont {
        return UIFont(name: "Raleway-Bold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
    }
   public var subheadlineSemiboldItalic: UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
    }
    
   public var footnoteRegular: UIFont {
        return UIFont(name: "Raleway-Regular", size: 13) ?? UIFont.systemFont(ofSize: 13)
    }
   public var footnoteItalic: UIFont {
        return UIFont(name: "Raleway-Italic", size: 13) ?? UIFont.italicSystemFont(ofSize: 13)
    }
   public var footnoteBold: UIFont {
           return UIFont(name: "Raleway-Bold", size: 13) ?? UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.semibold)
       }
   public var footnoteSemiboldItalic: UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 13) ?? UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.semibold)
    }
    
   public var caption1Regular: UIFont {
        return UIFont(name: "Raleway-Regular", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.semibold)
    }
   public var caption1Italic: UIFont {
        return UIFont(name: "Raleway-Italic", size: 12) ?? UIFont.italicSystemFont(ofSize: 12)
    }
   public var caption1Semibold: UIFont {
        return UIFont(name: "Raleway-Semibold", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.semibold)
    }
   public var caption1SemiboldItalic: UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.semibold)
    }
   public var caption2Regular: UIFont {
        return UIFont(name: "Raleway-Regular", size: 11) ?? UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.semibold)
    }
   public var caption2Italic: UIFont {
        return UIFont(name: "Raleway-Italic", size: 11) ?? UIFont.italicSystemFont(ofSize: 11)
    }
   public var caption2Bold: UIFont {
        return UIFont(name: "Raleway-Bold", size: 11) ?? UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.semibold)
    }
   public var caption2SemiboldItalic: UIFont {
        return UIFont(name: "Raleway-SemiBoldItalic", size: 11) ?? UIFont.systemFont(ofSize: 11, weight: UIFont.Weight.semibold)
    }
   public func apply() {
        // Cargamos las fuentes
        UIFont.loadFonts()
        
        if let navigationTitleFont = UIFont(name: "Raleway-Bold", size: 28) {
            UINavigationBar.appearance().largeTitleTextAttributes = [.font: navigationTitleFont]
        }
        if let navigationTitleFont = UIFont(name: "Raleway-Bold", size: 20) {
                   UINavigationBar.appearance().titleTextAttributes = [.font: navigationTitleFont]
               }
        if let primaryColor = UIColor(named: "primaryColor") {
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:primaryColor ], for:.selected)
            UITabBar.appearance().tintColor = primaryColor

        }
        if let secondaryColor = UIColor(named: "secondaryTextColor") {
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: secondaryColor], for:.normal)
            UITabBar.appearance().unselectedItemTintColor = secondaryColor

        }
        UITabBar.appearance().backgroundColor = UIColor(named: "backgroundTabBarColor")
        
    }
}

