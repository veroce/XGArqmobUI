//
//  AmTutorialStyle.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
@objc
open class AmTutorialStyle: NSObject {
    public override init() {
        if #available(iOS 13.0, *) {
            backgroundColor = .systemBackground
        }
    }
    private let bundle = Bundle(for: AmTutorialStyle.self)
    /**
     The backgroun color. Default is `systemColor` .
     */
    public var backgroundColor: UIColor = .white
    /**
     The currentPage color. Default is `primaryColor` .
     */
    public var currentPageColor: UIColor = UIColor(named: "primaryColor") ?? UIColor(named: "primaryColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil) ?? UIColor.blue
    /**
     The title color. Default is `secondaryElevationColor` .
     */
    public var titleColor: UIColor = UIColor(named: "primaryTextColor") ?? UIColor(named: "primaryTextColor", in: Bundle(for: AmTutorialStyle.self), compatibleWith: nil) ?? .darkGray
    /**
     The location color. Default is `secondaryElevationColor` .
     */
    public var messageColor: UIColor = UIColor(named: "primaryTextColor") ?? UIColor(named: "primaryTextColor", in: Bundle(for: AmTutorialStyle.self), compatibleWith: nil) ?? UIColor.darkGray
    /**
     The title color. Default is `nil` .
     */
    public var buttonBackgroundColor: UIColor? = UIColor(named: "tutorialButtonColor") ?? UIColor(named: "tutorialButtonColor", in: Bundle(for: AmTutorialStyle.self), compatibleWith: nil)
    /**
     The title font. Default is `title1Bold`.
     */
    public var titleFont: UIFont = UIFont.title1Bold()
    /**
     The message font. Default is `bodyRegular`.
     */
    public var messageFont: UIFont = UIFont.bodyRegular()
    /**
     The  button font. Default is `nil`.
     */
    public var buttonFont: UIFont?
}
