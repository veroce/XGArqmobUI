//
//  AmCardStyle.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

public struct AmCardStyle {
    public init() {}
    
    /**
     The background color. Default is `primaryColor` .
     */
    public var backgroundColor: UIColor = UIColor(named: "fichaMapaBackgroundColor") ?? UIColor.systemBackground
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
    public var titleFont: UIFont = Theme.current.bodyBold
    
    /**
     The location font. Default is `Theme.current.caption1Regular`.
     */
    public var locationFont: UIFont = Theme.current.caption1Regular
    /**
     The cancel button font. Default is `Theme.current.caption1Regular`.
     */
    public var categoryFont: UIFont = Theme.current.caption1Regular
}
