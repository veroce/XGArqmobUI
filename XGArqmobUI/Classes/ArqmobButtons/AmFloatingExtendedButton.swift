//
//  AmFloatingExtendedButton.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
open class AmFloatingExtendedButton: SimpleButton {
    private var shadowLayer: CAShapeLayer!
  @objc  open var style = AmFloatingButtonStyle() {
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
        imageView?.contentMode = .scaleAspectFit
        let contentPadding = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 20)
        contentEdgeInsets = contentPadding
        layer.cornerRadius = frame.height / 2
        tintColor = style.titleColorNormal
        dropShadowFAB()
        
    }
    
    
}
