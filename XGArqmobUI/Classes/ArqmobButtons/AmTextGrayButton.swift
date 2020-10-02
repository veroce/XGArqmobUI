//
//  AmTextGrayButton.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
@IBDesignable
open class AmTextGrayButton: UIButton {

   var activityIndicator: UIActivityIndicatorView!
    var customTitle: String?
  @objc  open var style = AmTextDefaultGrayButtonStyle() {
           didSet {
              
           }
       }
    open override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
  @objc  open override func draw(_ rect: CGRect) {
        // Drawing code
        setTitleColor(style.titleColorNormal, for: .normal)
        setTitleColor(style.titleColorHighlighted, for: .highlighted)
        setTitleColor(style.titleColorDisabled, for: .disabled)
        titleLabel?.font = style.titleFont
    }
 @objc  public func showLoading() {
        customTitle = self.titleLabel?.text
        self.setTitle("", for: .normal)
        
        if (activityIndicator == nil) {
            activityIndicator = createActivityIndicator()
        }
        
        showSpinning()
    }
 @objc  public func hideLoading() {
        self.setTitle(customTitle, for: .normal)
        activityIndicator.stopAnimating()
    }
    
    private func createActivityIndicator() -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = style.titleColorNormal
        return activityIndicator
    }
    
    private func showSpinning() {
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(activityIndicator)
        centerActivityIndicatorInButton()
        activityIndicator.startAnimating()
    }
    
    private func centerActivityIndicatorInButton() {
        let xCenterConstraint = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: activityIndicator, attribute: .centerX, multiplier: 1, constant: 0)
        self.addConstraint(xCenterConstraint)
        
        let yCenterConstraint = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: activityIndicator, attribute: .centerY, multiplier: 1, constant: 0)
        self.addConstraint(yCenterConstraint)
    }

}
