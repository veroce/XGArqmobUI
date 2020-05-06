//
//  AmTheme.swift
//  XGArqmobUI
//
//  Created by Vero on 06/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//
import UIKit

@objc(ArmobTheme)
open class ArmobTheme: NSObject {
    
    public static let current = ArmobTheme()
    /**
    Inicializa los estilos por defecto de la aplicación (navigation, tabbar, ...)
    */
    @objc open func apply() {
        
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
