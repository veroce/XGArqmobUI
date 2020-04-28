//
//  AmAlertStyle.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

public struct AmAlertStyle {
    public init() {}
    
    /**
     The background color. Default is `primaryColor` .
     */
    public var backgroundColor: UIColor = UIColor(named: "primayColor") ?? .white
    /**
     The cancel button color. Default is `primaryColor` .
     */
    public var cancelButtonColor: UIColor = UIColor(named: "primayColor") ?? UIColor.systemBlue
    /**
     The action button color. Default is `primaryColor` .
     */
    public var actionButtonColor: UIColor = UIColor(named: "primayColor") ?? UIColor.systemBlue
    
    /**
     The title font. Default is `Theme.current.title3Semibold`.
     */
    public var titleFont: UIFont = Theme.current.bodyBold
    
    /**
     The message font. Default is `Theme.current.subheadlineRegular`.
     */
    public var messageFont: UIFont = Theme.current.footnoteRegular
    /**
     The cancel button font. Default is `Theme.current.subheadlineRegular`.
     */
    public var cancelButtonFont: UIFont = Theme.current.bodyBold
    /**
     The action button font. Default is `Theme.current.subheadlineRegular`.
     */
    public var actionButtonFont: UIFont = Theme.current.bodyRegular
}
