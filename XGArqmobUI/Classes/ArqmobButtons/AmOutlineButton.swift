//
//  AmOutlineButton.swift
//  demoAr
//
//  Created by Vero on 30/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
open class AmOutlineButton: SimpleButton {
    open override func configureButtonStyles() {
        super.configureButtonStyles()
        setTitleColor(UIColor(named: "buttonEnableColor"), for: .normal)
        setTitleColor(UIColor(named: "buttonHighlightedColor"), for: .highlighted)
        setTitleColor(UIColor(named: "buttonDisabledColor"), for: .highlighted)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        setBorderColor(UIColor(named: "buttonEnableColor") ?? UIColor.systemRed, for: .normal, animationDuration: 0.3)
        setBorderColor(UIColor(named: "buttonHighlightedColor") ?? UIColor.systemRed, for: .highlighted, animated: false)
        setBorderColor(UIColor(named: "buttonDisabledColor") ?? UIColor.systemRed, for: .disabled, animated: false)
        setBorderWidth(1.0, for: .normal)
        loadingColor = UIColor(named: "buttonEnableColor")
        clipsToBounds = true
        layer.cornerRadius = 8.0
        
    }
}
