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
    
    public var navigationLargeFontTitle =  UIFont(name: "Raleway-Bold", size: 28)
    
    public var navigationFontTitle =  UIFont(name: "Raleway-Bold", size: 20)
    
    public var navigationLargeTitlecColor = UIColor(named:"primaryTextColor") ?? UIColor(named: "primaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    public var navigationTitlecColor = UIColor(named:"primaryTextColor") ?? UIColor(named: "primaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    public var navigationBackgroundColor = UIColor(named: "primaryColor") ?? UIColor(named: "primaryColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    public var tabBarSelectedItemColor = UIColor(named: "primaryColor") ?? UIColor(named: "primaryColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    /**
            Si el dispositivo tiene ios 13, en caso de no tener ios 13, en cada uno de los view controller hay que poner
             navigationBar.isTranslucent = false
             navigationBar.setBackgroundImage(UIImage(), for: .default)
             navigationBar.shadowImage = UIImage()
    */
    public var hideShadow: Bool = false
    
    public var tabBarUnselectedItemColor = UIColor(named: "secondaryTextColor") ?? UIColor(named: "secondaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    public var tabBarBackgroundColor = UIColor(named: "backgroundTabBarColor") ?? UIColor(named: "backgroundTabBarColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    public var tabBarFontTitle =  UIFont(name: "Raleway-Bold", size: 20)
    
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
            
            if let titleColor = navigationLargeTitlecColor, let titleFont = navigationLargeFontTitle {
                navBarAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor, .font: titleFont]
            }else if let titleColor = navigationLargeTitlecColor {
                 navBarAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor]
            }else if let titleFont = navigationLargeFontTitle{
                 navBarAppearance.largeTitleTextAttributes = [.font: titleFont]
            }
            if let titleColor = navigationTitlecColor, let titleFont = navigationFontTitle {
                navBarAppearance.titleTextAttributes = [.foregroundColor: titleColor, .font: titleFont]
            }else if let titleColor = navigationTitlecColor {
                navBarAppearance.titleTextAttributes = [.foregroundColor: titleColor]
            }else if  let titleFont = navigationFontTitle {
                 navBarAppearance.titleTextAttributes = [.font: titleFont]
            }
            if hideShadow {
                navBarAppearance.shadowColor = .clear
            }
            
            navBarAppearance.backgroundColor = navigationBackgroundColor
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
            
        }else {
            if let navigationTitleFont = navigationLargeFontTitle, let titleColor = navigationLargeTitlecColor {
                UINavigationBar.appearance().largeTitleTextAttributes = [.font: navigationTitleFont, .foregroundColor: titleColor]
            }else if let navigationTitleFont = navigationLargeFontTitle {
                UINavigationBar.appearance().largeTitleTextAttributes = [.font: navigationTitleFont]
            }else if let titleColor = navigationLargeTitlecColor {
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: titleColor]
            }
            if let navigationTitleFont = navigationFontTitle, let titleColor = navigationTitlecColor {
                UINavigationBar.appearance().titleTextAttributes = [.font: navigationTitleFont, .foregroundColor: titleColor]
            }else if let navigationTitleFont = navigationFontTitle {
                UINavigationBar.appearance().titleTextAttributes = [.font: navigationTitleFont]
            }else if let titleColor = navigationTitlecColor  {
                UINavigationBar.appearance().titleTextAttributes = [ .foregroundColor: titleColor]
            }
            UINavigationBar.appearance().barTintColor = navigationBackgroundColor
        }
        
        
        
    }
}
