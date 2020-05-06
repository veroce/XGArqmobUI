//
//  AmOutilneGrayButton.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
open class AmOutlineGrayButton: SimpleButton {
    open override func configureButtonStyles() {
        super.configureButtonStyles()
        setTitleColor(UIColor(named: "buttonTitleEnableColor"), for: .normal)
        setTitleColor(UIColor(named: "buttonTitleHighlightedColor"), for: .highlighted)
        setTitleColor(UIColor(named: "buttonTitleDisabledColor"), for: .disabled)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        setBorderColor(UIColor(named: "buttonGrayEnableColor") ?? UIColor.systemRed, for: .normal, animationDuration: 0.3)
        setBorderColor(UIColor(named: "buttonGrayHighlightedColor") ?? UIColor.systemRed, for: .highlighted, animated: false)
        setBorderColor(UIColor(named: "buttonGrayDisabledColor") ?? UIColor.systemRed, for: .disabled, animated: false)
        setBorderWidth(1.0, for: .normal)
        loadingColor = UIColor(named: "buttonGrayEnableColor")
        clipsToBounds = true
        layer.cornerRadius = 8.0
        
    }
}

