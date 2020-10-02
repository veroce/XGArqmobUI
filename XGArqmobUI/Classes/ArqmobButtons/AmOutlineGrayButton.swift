//
//  AmOutilneGrayButton.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
@IBDesignable
open class AmOutlineGrayButton: SimpleButton {
   @objc open var style = AmOutlineDefaultGrayButtonStyle() {
        didSet {
            configureButtonStyles()
        }
    }
    open override func configureButtonStyles() {
        super.configureButtonStyles()
        setTitleColor(style.titleColorNormal, for: .normal)
        setTitleColor(style.titleColorHighlighted, for: .highlighted)
        setTitleColor(style.titleColorDisabled, for: .disabled)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        setBorderColor(style.borderColorNormal, for: .normal, animationDuration: 0.3)
        setBorderColor(style.borderColorHighlighted, for: .highlighted, animated: false)
        setBorderColor(style.borderColorDisabled, for: .disabled, animated: false)
        setBorderWidth(1.0, for: .normal)
        loadingColor = style.borderColorNormal
        clipsToBounds = true
        layer.cornerRadius = 8.0
        
    }
}

