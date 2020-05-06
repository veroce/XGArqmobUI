//
//  AmCardStyle.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
@objc
open class AmCardStyle: NSObject {
    public override init() {}
    
    /**
     The background color. Default is `primaryColor` .
     */
    public var backgroundColor: UIColor = UIColor(named: "fichaMapaBackgroundColor") ?? .white
    /**
     The shadow color color. Default is `secondaryElevationColor` .
     */
    public var shadowColor: UIColor = UIColor(named: "secondaryElevationColor") ?? UIColor.darkGray
    /**
     The title color. Default is `secondaryElevationColor` .
     */
    public var titleColor: UIColor = UIColor(named: "primaryTextColor") ?? .darkGray
    /**
     The location color. Default is `secondaryElevationColor` .
     */
    public var locationColor: UIColor = UIColor(named: "secondaryTextColor") ?? UIColor.darkGray
    /**
     The title color. Default is `secondaryElevationColor` .
     */
    public var categoryColor: UIColor = UIColor(named: "secondaryTextColor") ?? UIColor.darkGray
    /**
     The title font. Default is `Theme.current.bodyBold`.
     */
    public var titleFont: UIFont = UIFont.bodyBold()
    
    /**
     The location font. Default is `Theme.current.caption1Regular`.
     */
    public var locationFont: UIFont = UIFont.caption1Regular()
    /**
     The cancel button font. Default is `Theme.current.caption1Regular`.
     */
    public var categoryFont: UIFont = UIFont.caption1Regular()
}
