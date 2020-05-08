//
//  AmAboutUsStyle.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

@objc
public class AmAboutUsStyle: NSObject {
    
    public override init() {
        if #available(iOS 13.0, *) {
            backgroundColor = .systemBackground
        }
    }
    
    /**
     The tabs title. Default is `bodyRegular` .
     */
    public var tabsTitle: UIFont = UIFont.bodyRegular()
    /**
     The info fonte. Default is `bodyRegular` .
     */
    public var infoFont: UIFont = UIFont.bodyRegular()
    /**
     The version font. Default is `.subheadlineBold` .
     */
    public var versionFont: UIFont = UIFont.subheadlineBold()
    /**
     The background color. Default is `systemColor` .
     */
    public var backgroundColor: UIColor = UIColor.white
    /**
     The titles color. Default is `systemColor` .
     */
    public var title: UIColor = UIColor(named: "secondaryTextColor") ?? UIColor(named: "secondaryTextColor", in: Bundle(for: AmAboutUsStyle.self), compatibleWith: nil) ?? UIColor.darkGray
    /**
     The version info color. Default is `systemColor` .
     */
    public var infoColor: UIColor = UIColor(named: "primaryTextColor") ?? UIColor(named: "primaryTextColor", in: Bundle(for: AmAboutUsStyle.self), compatibleWith: nil) ?? UIColor.darkGray
    
    
    
}
