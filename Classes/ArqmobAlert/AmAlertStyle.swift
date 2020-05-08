//
//  AmAlertStyle.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
@objc
public class AmAlertStyle: NSObject {
    public override init() {}
    
    /**
     The background color. Default is `primaryColor` .
     */
    public var backgroundColor: UIColor = UIColor(named: "primaryColor") ?? UIColor(named: "primaryColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil) ?? UIColor.white
    /**
     The cancel button color. Default is `primaryColor` .
     */
    public var cancelButtonColor: UIColor = UIColor(named: "primaryColor") ?? UIColor(named: "primaryColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil) ?? UIColor.systemBlue
    /**
     The action button color. Default is `primaryColor` .
     */
    public var actionButtonColor: UIColor = UIColor(named: "primaryColor") ?? UIColor(named: "primaryColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil) ?? UIColor.systemBlue
    
    /**
     The title font. Default is `UIFont.bodyBold()`.
     */
    public var titleFont: UIFont = UIFont.bodyBold()
    
    /**
     The message font. Default is ` UIFont.footnoteRegular()`.
     */
    public var messageFont: UIFont = UIFont.footnoteRegular()
    /**
     The cancel button font. Default is ` UIFont.bodyBold()`.
     */
    public var cancelButtonFont: UIFont = UIFont.bodyBold()
    /**
     The action button font. Default is `UIFont.bodyRegular()`.
     */
    public var actionButtonFont: UIFont = UIFont.bodyRegular()
}
