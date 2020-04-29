//
//  AmFloatingExtendedButton.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

public class AmFloatingExtendedButton: UIButton {
    private var shadowLayer: CAShapeLayer!

    public override func draw(_ rect: CGRect) {
        // Drawing code
        super.draw(rect)
        clipsToBounds = true
        setTitleColor(UIColor.white, for:.normal)
        setTitleColor(UIColor.white, for: .highlighted)
        setTitleColor(.white, for: .disabled)
        tintColor = .white
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        setBackgroundColor(color: UIColor(named: "buttonEnableColor") ?? .clear, forState: .normal)
        setBackgroundColor(color: UIColor(named: "buttonDisabledColor") ?? .clear, forState: .disabled)
        imageView?.contentMode = .scaleAspectFit
        let contentPadding = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 20)
        setInsets(forContentPadding: contentPadding, imageTitlePadding: 12)
        

    }
    public override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height/2
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius).cgPath
        self.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 1.0
    }
 /*   override func layoutSubviews() {
        super.layoutSubviews()

        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 12).cgPath
            shadowLayer.fillColor =  UIColor(named: "buttonEnableColor")?.cgColor

            shadowLayer.shadowColor = UIColor.darkGray.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            shadowLayer.shadowOpacity = 0.8
            shadowLayer.shadowRadius = 2

            layer.insertSublayer(shadowLayer, at: 0)
            //layer.insertSublayer(shadowLayer, below: nil) // also works
        }
    }*/

    override open var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? UIColor(named: "buttonHighlightedColor") : UIColor(named: "buttonEnableColor")
        }
    }
    
    
    
}
