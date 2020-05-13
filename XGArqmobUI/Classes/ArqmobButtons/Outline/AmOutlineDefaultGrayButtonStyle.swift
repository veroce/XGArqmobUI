//
//  AmOutlineDefaultGrayButtonStyle.swift
//  XGArqmobUI
//
//  Created by Vero on 07/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

import UIKit
@objc
open class AmOutlineDefaultGrayButtonStyle: NSObject {
    
    @objc public override init() {}
    private let bundle = Bundle(for: AmDefaultButtonStyle.self)
    /**
     The backgroun color for normal state. Default is `buttonEnableColor` .
     */
    @objc public var borderColorNormal: UIColor = UIColor(named: "buttonGrayEnableColor") ?? UIColor(named: "buttonGrayEnableColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    /**
     The backgroun color for highlighted state. Default is `buttonHighlightedColor` .
     */
    @objc public var borderColorHighlighted: UIColor = UIColor(named: "buttonGrayHighlightedColor") ?? UIColor(named: "buttonGrayHighlightedColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    /**
     The backgroun color for disabled state. Default is `buttonDisabledColor` .
     */
    @objc public var borderColorDisabled: UIColor = UIColor(named: "buttonGrayDisabledColor") ?? UIColor(named: "buttonGrayDisabledColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    
    /**
     The title color for normal state. Default is `white` .
     */
    @objc public var titleColorNormal: UIColor = UIColor(named: "buttonTitleEnableColor") ?? UIColor(named: "buttonTitleEnableColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    /**
     The title color for highlighted state. Default is `white` .
     */
    @objc public var titleColorHighlighted: UIColor = UIColor(named: "buttonTitleHighlightedColor") ?? UIColor(named: "buttonTitleHighlightedColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    /**
     The title color for disabled state. Default is `white` .
     */
    @objc public var titleColorDisabled: UIColor = UIColor(named: "buttonTitleDisabledColor") ?? UIColor(named: "buttonTitleDisabledColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .darkGray
    
    /**
     The title font. Default is `Raleway-Semibold 15`.
     */
    @objc public var titleFont: UIFont = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
    
}
