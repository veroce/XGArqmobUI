//
//  AmFloatingButton.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
open class AmFloatingButton: UIButton {
    private var shadowLayer: CAShapeLayer!

    open override func draw(_ rect: CGRect) {
        // Drawing code
        
        clipsToBounds = true
        setTitleColor(UIColor.white, for:.normal)
        setTitleColor(UIColor.white, for: .highlighted)
        setTitleColor(.white, for: .disabled)
        tintColor = .white
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        layer.cornerRadius = frame.height / 2
        imageView?.contentMode = .scaleAspectFit
        setBackgroundColor(color: UIColor(named: "buttonEnableColor") ?? .clear, forState: .normal)
        setBackgroundColor(color: UIColor(named: "buttonDisabledColor") ?? .clear, forState: .disabled)
    }
    
     override open var isHighlighted: Bool {
           didSet {
               backgroundColor = isHighlighted ? UIColor(named: "buttonHighlightedColor") : UIColor(named: "buttonEnableColor")
           }
       }
    
    
}
