//
//  UITextField+Style.swift
//  demoAr
//
//  Created by Vero on 06/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

public class CustomTextField: UITextField {

let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
        //Background
    }

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

}
