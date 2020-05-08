//
//  AmDefaultGreyButton.swift
//  XGArqmobUI
//
//  Created by Vero on 07/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

import UIKit
@objc
open class AmDefaultGrayButtonStyle: NSObject {
    
    public override init() {}
    private let bundle = Bundle(for: AmDefaultButtonStyle.self)
    /**
     The backgroun color for normal state. Default is `buttonEnableColor` .
     */
    public var backgroundColorNormal: UIColor = UIColor(named: "buttonGrayEnableColor") ?? UIColor(named: "buttonGrayEnableColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    /**
     The backgroun color for highlighted state. Default is `buttonHighlightedColor` .
     */
    public var backgroundColorHighlighted: UIColor = UIColor(named: "buttonGrayHighlightedColor") ?? UIColor(named: "buttonGrayHighlightedColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    /**
     The backgroun color for disabled state. Default is `buttonDisabledColor` .
     */
    public var backgroundColorDisabled: UIColor = UIColor(named: "buttonGrayDisabledColor") ?? UIColor(named: "buttonGrayDisabledColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    
    /**
     The title color for normal state. Default is `white` .
     */
    public var titleColorNormal: UIColor = .white
    /**
     The title color for highlighted state. Default is `white` .
     */
    public var titleColorHighlighted: UIColor = .white
    /**
     The title color for disabled state. Default is `white` .
     */
    public var titleColorDisabled: UIColor = .white
    
    /**
     The title font. Default is `Raleway-Semibold 15`.
     */
    public var titleFont: UIFont = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
    
}

