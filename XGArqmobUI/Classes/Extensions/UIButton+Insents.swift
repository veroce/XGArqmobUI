//
//  UIButton+Insents.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

extension UIButton {
    func setInsets(
        forContentPadding contentPadding: UIEdgeInsets,
        imageTitlePadding: CGFloat
    ) {
        self.contentEdgeInsets = UIEdgeInsets(
            top: contentPadding.top,
            left: contentPadding.left,
            bottom: contentPadding.bottom,
            right: contentPadding.right + imageTitlePadding
        )
        self.titleEdgeInsets = UIEdgeInsets(
            top: 0,
            left: imageTitlePadding,
            bottom: 0,
            right: -imageTitlePadding
        )
    }
    func dropShadowFAB(color: UIColor? = nil) {
        layer.masksToBounds = false
        if color == nil {
            layer.shadowColor = UIColor.darkGray.cgColor
        }else{
            layer.shadowColor = color!.cgColor
            
        }
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 1.0, height: 4.0)
    }
}
