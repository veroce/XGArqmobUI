//
//  AmAboutUsStyle.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

public struct AmAboutUsStyle {
    
    public init() {}
    
    /**
     The tabs title. Default is `Theme.current.bodyRegular` .
     */
    public var tabsTitle: UIFont = Theme.current.bodyRegular
    /**
     The info fonte. Default is `Theme.current.subheadlineBold` .
     */
    public var infoFont: UIFont = Theme.current.bodyRegular
    /**
     The version font. Default is `Theme.current.subheadlineBold` .
     */
    public var versionFont: UIFont = Theme.current.subheadlineBold
    /**
     The background color. Default is `systemColor` .
     */
    public var backgroundColor: UIColor = UIColor.systemBackground
    /**
     The titles color. Default is `systemColor` .
     */
    public var title: UIColor = UIColor(named: "secondaryTextColor") ?? UIColor.secondaryLabel
    /**
     The version info color. Default is `systemColor` .
     */
    public var infoColor: UIColor = UIColor(named: "primaryTextColor") ?? UIColor.secondaryLabel
    
    
    
}
