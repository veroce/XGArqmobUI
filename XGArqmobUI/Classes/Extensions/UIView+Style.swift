//
//  UIView+Style.swift
//  demoAr
//
//  Created by Vero on 08/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

extension UIView {
    func dropShadow(color: UIColor? = nil) {
        layer.masksToBounds = false
        if color == nil {
            layer.shadowColor = UIColor.darkGray.cgColor
        }else{
            layer.shadowColor = color!.cgColor
            
        }
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        //layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        //layer.shouldRasterize = true
        //layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func addShadow(offset: CGSize, color: UIColor, radius: CGFloat, opacity: Float) {
        layer.masksToBounds = false
        layer.shadowOffset = offset
        layer.shadowColor = color.cgColor
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        layer.shadowPath = UIBezierPath(roundedRect: layer.bounds, cornerRadius: layer.cornerRadius).cgPath
        let backgroundCGColor = backgroundColor?.cgColor
        backgroundColor = nil
        layer.backgroundColor =  backgroundCGColor
    }
}
