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
    
    @objc public class func currentInstance() -> ArmobTheme {
        return ArmobTheme.current
    }
    
    public static let current = ArmobTheme()
    
    @objc public var navigationLargeFontTitle =  UIFont(name: "Raleway-Bold", size: 28)
    
    @objc public var navigationFontTitle =  UIFont(name: "Raleway-Bold", size: 20)
    
    @objc public var navigationLargeTitleColor = UIColor.white
    
    @objc public var navigationTitleColor = UIColor.white
    
    @objc public var navigationBackgroundColor = UIColor(named: "primaryColor") ?? UIColor(named: "primaryColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    @objc public var tabBarSelectedItemColor = UIColor(named: "primaryColor") ?? UIColor(named: "primaryColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    /**
     Si el dispositivo tiene ios 13, en caso de no tener ios 13, en cada uno de los view controller hay que poner
     navigationBar.isTranslucent = false
     navigationBar.setBackgroundImage(UIImage(), for: .default)
     navigationBar.shadowImage = UIImage()
     */
    @objc public var hideShadow: Bool = false
    
    @objc public var tabBarUnselectedItemColor = UIColor(named: "secondaryTextColor") ?? UIColor(named: "secondaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    @objc public var tabBarBackgroundColor = UIColor(named: "backgroundTabBarColor") ?? UIColor(named: "backgroundTabBarColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    @objc public var tabBarFontTitle =  UIFont(name: "Raleway-Bold", size: 20)
    
    /**
     Inicializa los estilos por defecto de la aplicación (navigation, tabbar, ...)
     */
    @objc open func apply() {
        
        // Cargamos las fuentes
        // TODO: Revisar porque no las está cargando bien
        UIFont.loadFonts()
        
        // Creamos los estilos para la tabbar
        if let primaryColor = tabBarSelectedItemColor, let customFont = tabBarFontTitle {
            UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor:primaryColor, .font: customFont ], for:.selected)
            UITabBarItem.appearance().setTitleTextAttributes([.font: customFont ], for:.normal)
            UITabBar.appearance().tintColor = primaryColor
        }else if let primaryColor = tabBarSelectedItemColor {
            UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor:primaryColor ], for:.selected)
            UITabBar.appearance().tintColor = primaryColor
        }else if let customFont = tabBarFontTitle{
            UITabBarItem.appearance().setTitleTextAttributes([.font: customFont ], for:.selected)
            UITabBarItem.appearance().setTitleTextAttributes([.font: customFont ], for:.normal)
        }
        
        
        if let secondaryColor = tabBarUnselectedItemColor {
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: secondaryColor], for:.normal)
            UITabBar.appearance().unselectedItemTintColor = secondaryColor
        }
        UITabBar.appearance().backgroundColor = tabBarBackgroundColor
        
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            
            if  let titleFont = navigationLargeFontTitle {
                navBarAppearance.largeTitleTextAttributes = [.foregroundColor: navigationLargeTitleColor, .font: titleFont]
            }else  {
                navBarAppearance.largeTitleTextAttributes = [.foregroundColor: navigationLargeTitleColor]
            }
            if let titleFont = navigationFontTitle {
                navBarAppearance.titleTextAttributes = [.foregroundColor: navigationTitleColor, .font: titleFont]
            }else {
                navBarAppearance.titleTextAttributes = [.foregroundColor: navigationTitleColor]
            }
            if hideShadow {
                navBarAppearance.shadowColor = .clear
            }
            
            navBarAppearance.backgroundColor = navigationBackgroundColor
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
            
        }else {
            if let navigationTitleFont = navigationLargeFontTitle{
                UINavigationBar.appearance().largeTitleTextAttributes = [.font: navigationTitleFont, .foregroundColor: navigationLargeTitleColor]
            }else{
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: navigationLargeTitleColor]
            }
            if let navigationTitleFont = navigationFontTitle {
                UINavigationBar.appearance().titleTextAttributes = [.font: navigationTitleFont, .foregroundColor: navigationTitleColor]
            }else{
                UINavigationBar.appearance().titleTextAttributes = [ .foregroundColor: navigationTitleColor]
            }
            UINavigationBar.appearance().barTintColor = navigationBackgroundColor
        }
        
        
        
    }
}
