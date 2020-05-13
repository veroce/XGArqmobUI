//
//  AmFloatingButtonStyle.swift
//  XGArqmobUI
//
//  Created by Vero on 13/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

import UIKit

@objc
open class AmFloatingButtonStyle: NSObject {
    public override init() {}
    private let bundle = Bundle(for: AmFloatingButtonStyle.self)
    
   @objc public var backgroundColorNormal: UIColor = UIColor(named: "buttonEnableColor") ?? UIColor(named: "buttonEnableColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .clear
    /**
     The backgroun color for highlighted state. Default is `buttonHighlightedColor` .
     */
   @objc public var backgroundColorHighlighted: UIColor = UIColor(named: "buttonHighlightedColor") ?? UIColor(named: "buttonHighlightedColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .clear
    /**
     The backgroun color for disabled state. Default is `buttonDisabledColor` .
     */
   @objc public var backgroundColorDisabled: UIColor = UIColor(named: "buttonDisabledColor") ?? UIColor(named: "buttonDisabledColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .clear
    /**
     The title font. Default is `Raleway-Semibold 15`.
     */
    @objc public var titleFont: UIFont = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
    /**
     The title color for normal state. Default is `white` .
     */
    @objc public var titleColorNormal: UIColor = .white
    /**
     The title color for highlighted state. Default is `white` .
     */
    @objc public var titleColorHighlighted: UIColor = .white
    /**
     The title color for disabled state. Default is `white` .
     */
   @objc public var titleColorDisabled: UIColor = .white
}
