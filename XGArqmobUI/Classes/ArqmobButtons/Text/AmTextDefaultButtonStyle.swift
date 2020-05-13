//
//  AmTextDefaultButtonStyle.swift
//  XGArqmobUI
//
//  Created by Vero on 07/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//


import UIKit
@objc
open class AmTextDefaultButtonStyle: NSObject {
    
    @objc public override init() {}
    private let bundle = Bundle(for: AmDefaultButtonStyle.self)

    /**
     The title color for normal state. Default is `white` .
     */
    @objc public var titleColorNormal: UIColor = UIColor(named: "buttonEnableColor") ?? UIColor(named: "buttonEnableColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    /**
     The title color for highlighted state. Default is `white` .
     */
    @objc public var titleColorHighlighted: UIColor = UIColor(named: "buttonHighlightedColor") ?? UIColor(named: "buttonHighlightedColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    /**
     The title color for disabled state. Default is `white` .
     */
    @objc public var titleColorDisabled: UIColor = UIColor(named: "buttonDisabledColor") ?? UIColor(named: "buttonDisabledColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    
    /**
     The title font. Default is `Raleway-Semibold 15`.
     */
    @objc public var titleFont: UIFont = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
    
}
