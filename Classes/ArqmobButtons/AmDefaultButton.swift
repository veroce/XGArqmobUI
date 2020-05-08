//
//  AmDefaultButton.swift
//  demoAr
//
//  Created by Vero on 30/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
@IBDesignable
open class AmDefaultButton: SimpleButton {
    open var style = AmDefaultButtonStyle() {
           didSet {
               configureButtonStyles()
           }
       }
    open override func configureButtonStyles() {
        super.configureButtonStyles()
       setBackgroundColor(style.backgroundColorNormal, for: .normal, animated: true, animationDuration: 0.2)
        setBackgroundColor(style.backgroundColorHighlighted, for: .highlighted, animated: false)
        setBackgroundColor(style.backgroundColorDisabled, for: .disabled, animated: false)
        setBackgroundColor(color: style.backgroundColorDisabled, forState: SimpleButtonControlState.loading)
        setTitleColor(style.titleColorNormal, for:.normal)
        setTitleColor(style.titleColorHighlighted, for: .highlighted)
        setTitleColor(style.titleColorDisabled, for: .disabled)
        titleLabel?.font = style.titleFont
        clipsToBounds = true
        layer.cornerRadius = 8.0
        clipsToBounds = true
    }
}
