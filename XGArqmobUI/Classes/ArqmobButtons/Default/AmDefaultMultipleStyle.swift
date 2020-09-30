//
//  AmDefaultMultipleStyle.swift
//  XGArqmobUI
//
//  Created by ines piñeiro on 30/09/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

import UIKit
@objc
open class AmDefaultMultipleStyle: NSObject {
    
    @objc public override init() {}
    private let bundle = Bundle(for: AmDefaultButtonStyle.self)
    /**
     The backgroun color for normal state. Default is `buttonEnableColor` .
     */
    @objc public var backgroundColorNormal: UIColor = UIColor(named: "tutorialButtonColor") ?? UIColor(named: "tutorialButtonColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .clear
    /**
     The backgroun color for highlighted state. Default is `buttonHighlightedColor` .
     */
    @objc public var backgroundColorHighlighted: UIColor = UIColor(named: "tutorialButtonHighlightedColor") ?? UIColor(named: "tutorialButtonHighlightedColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .clear
    /**
     The backgroun color for disabled state. Default is `buttonDisabledColor` .
     */
    @objc public var backgroundColorDisabled: UIColor = UIColor(named: "buttonDisabledColor") ?? UIColor(named: "buttonDisabledColor", in: Bundle(for: AmDefaultButton.self), compatibleWith: nil) ?? .clear
    
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
    
    /**
     The title font. Default is `Raleway-Semibold 15`.
     */
    @objc public var titleFont: UIFont = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
    
}
