//
//  AmErrorViewStyle.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
@objc
public class AmErrorViewStyle: NSObject {
    @objc public override init() {
        if #available(iOS 13.0, *) {
            backgroundColor = .systemBackground
        }
    }
    /**
     The title color. Default is `secondaryElevationColor` .
     */
    @objc public var titleColor: UIColor = UIColor(named: "textColorErrorView") ?? UIColor(named: "textColorErrorView", in: Bundle(for: ArmobTheme.self), compatibleWith: nil) ?? .darkGray
    /**
     The background color. Default is `.systemBackground` .
     */
    @objc public var backgroundColor: UIColor = .white
    /**
     The message color. Default is `secondaryElevationColor` .
     */
    @objc public var messageColor: UIColor = UIColor(named: "textColorErrorView") ?? UIColor(named: "textColorErrorView", in: Bundle(for: ArmobTheme.self), compatibleWith: nil) ?? UIColor.darkGray
    /**
     The title color. Default is `secondaryElevationColor` .
     */
    @objc public var emptyResultsColor: UIColor = UIColor(named: "textColorErrorView") ?? UIColor(named: "textColorErrorView", in: Bundle(for: ArmobTheme.self), compatibleWith: nil) ?? UIColor.darkGray
    /**
     The title font. Default is `Theme.current.title1Bold`.
     */
    @objc public var titleFont: UIFont = UIFont.title1Bold()
    
    /**
     The message font. Default is `Theme.current.bodyRegular`.
     */
    @objc public var messageFont: UIFont = UIFont.bodyRegular()
    /**
     The empty results font. Default is `Theme.current.bodyRegular`.
     */
    @objc public var emptyResultsFont: UIFont = UIFont.bodyBold()

}
