//
//  AmDefaultButton.swift
//  demoAr
//
//  Created by Vero on 30/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
open class AmDefaultButton: SimpleButton {
    open override func configureButtonStyles() {
        super.configureButtonStyles()
        setBackgroundColor(UIColor(named: "buttonEnableColor") ?? .clear, for: .normal, animated: true, animationDuration: 0.2)
        setBackgroundColor(UIColor(named: "buttonHighlightedColor") ?? .clear, for: .highlighted, animated: false)
        setBackgroundColor(UIColor(named: "buttonDisabledColor") ?? .clear, for: .disabled, animated: false)
        setBackgroundColor(color: UIColor(named: "buttonDisabledColor") ?? .clear, forState: SimpleButtonControlState.loading)
        setTitleColor(UIColor.white, for:.normal)
        setTitleColor(UIColor.white, for: .highlighted)
        setTitleColor(.white, for: .disabled)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        clipsToBounds = true
        layer.cornerRadius = 8.0
        clipsToBounds = true
    }
}
