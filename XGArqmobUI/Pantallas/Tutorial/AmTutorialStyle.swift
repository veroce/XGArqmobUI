//
//  AmTutorialStyle.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

public struct AmTutorialStyle {
    public init() {}
    /**
     The backgroun color. Default is `systemColor` .
     */
    public var backgroundColor: UIColor = UIColor.systemBackground
    /**
     The currentPage color. Default is `primaryColor` .
     */
    public var currentPageColor: UIColor = UIColor(named: "primaryColor") ?? UIColor.blue
    /**
     The title color. Default is `secondaryElevationColor` .
     */
    public var titleColor: UIColor = UIColor(named: "primaryTextColor") ?? .darkGray
    /**
     The location color. Default is `secondaryElevationColor` .
     */
    public var messageColor: UIColor = UIColor(named: "primaryTextColor") ?? UIColor.darkGray
    /**
     The title color. Default is `nil` .
     */
    public var buttonBackgroundColor: UIColor? = UIColor(named: "tutorialButtonColor")
    /**
     The title font. Default is `Theme.current.title1Bold`.
     */
    public var titleFont: UIFont = Theme.current.title1Bold
    /**
     The message font. Default is `Theme.current.title1Bold`.
     */
    public var messageFont: UIFont = Theme.current.bodyRegular
    /**
     The  button font. Default is `nil`.
     */
    public var buttonFont: UIFont?
}
