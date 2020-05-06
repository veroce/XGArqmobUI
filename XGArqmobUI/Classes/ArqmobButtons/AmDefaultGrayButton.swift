//
//  AmDefaultGrayButton.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
open class AmDefaultGrayButton: SimpleButton {
    open override func configureButtonStyles() {
        super.configureButtonStyles()
        setBackgroundColor(UIColor(named: "buttonGrayEnableColor") ?? .clear, for: .normal, animated: true, animationDuration: 0.2)
        setBackgroundColor(UIColor(named: "buttonGrayHighlightedColor") ?? .clear, for: .highlighted, animated: false)
        setBackgroundColor(UIColor(named: "buttonGrayDisabledColor") ?? .clear, for: .disabled, animated: false)
        setBackgroundColor(color: UIColor(named: "buttonGrayDisabledColor") ?? .clear, forState: SimpleButtonControlState.loading)
        setTitleColor(UIColor.white, for:.normal)
        setTitleColor(UIColor.white, for: .highlighted)
        setTitleColor(.white, for: .disabled)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        clipsToBounds = true
        layer.cornerRadius = 8.0
        clipsToBounds = true
    }
}
