//
//  AmOutilneGrayButton.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
public class AmOutlineGrayButton: SimpleButton {
    public override func configureButtonStyles() {
        super.configureButtonStyles()
        setTitleColor(UIColor(named: "buttonTitleEnableColor"), for: .normal)
        setTitleColor(UIColor(named: "buttonTitleHighlightedColor"), for: .highlighted)
        setTitleColor(UIColor(named: "buttonTitleDisabledColor"), for: .disabled)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        setBorderColor(UIColor(named: "buttonGrayEnableColor") ?? UIColor.systemRed, for: .normal, animationDuration: 0.3)
        setBorderColor(UIColor(named: "buttonGrayHighlightedColor") ?? UIColor.systemRed, for: .highlighted, animated: false)
        setBorderColor(UIColor(named: "buttonGrayDisabledColor") ?? UIColor.systemRed, for: .disabled, animated: false)
        setBorderWidth(1.0, for: .normal)
        loadingColor = UIColor(named: "buttonGrayEnableColor")
        clipsToBounds = true
        layer.cornerRadius = 8.0
        
    }
}
/*class AmOutlineGrayButton: UIButton {

    var activityIndicator: UIActivityIndicatorView!
       var customTitle: String?
       // Only override draw() if you perform custom drawing.
       // An empty implementation adversely affects performance during animation.
       override func draw(_ rect: CGRect) {
           // Drawing code
           
           setTitleColor(UIColor(named: "buttonGrayEnableColor"), for: .normal)
           setTitleColor(UIColor(named: "buttonGrayHighlightedColor"), for: .highlighted)
           setTitleColor(UIColor(named: "buttonGrayDisabledColor"), for: .disabled)
           titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 14) ?? UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.semibold)
           self.layer.cornerRadius = 8.0
           self.clipsToBounds = true
           self.layer.borderWidth = 1.0
           self.layer.borderColor = UIColor(named: "buttonGrayEnableColor")?.cgColor
       }
       
       override var isHighlighted: Bool{
           didSet {
               if (isHighlighted) {
                   self.layer.cornerRadius = 10.0
                   self.clipsToBounds = true
                   self.layer.borderWidth = 1.0
                   self.layer.borderColor = UIColor(named: "buttonGrayHighlightedColor")?.cgColor
               }
               else {
                   self.layer.cornerRadius = 8.0
                   self.clipsToBounds = true
                   self.layer.borderWidth = 1.0
                   self.layer.borderColor = UIColor(named: "buttonGrayEnableColor")?.cgColor
               }
           }
       }
       
       override var isEnabled: Bool{
           didSet {
               if (isUserInteractionEnabled) {
                   self.layer.cornerRadius = 8.0
                   self.clipsToBounds = true
                   self.layer.borderWidth = 1.0
                   self.layer.borderColor = UIColor(named: "buttonGrayEnableColor")?.cgColor
               }
               else {
                   self.layer.cornerRadius = 8.0
                   self.clipsToBounds = true
                   self.layer.borderWidth = 1.0
                   self.layer.borderColor = UIColor(named: "buttonGrayDisabledColor")?.cgColor
               }
           }
       }
       

       func showLoading() {
           customTitle = self.titleLabel?.text
           self.setTitle("", for: .normal)

           if (activityIndicator == nil) {
               activityIndicator = createActivityIndicator()
           }
           isEnabled = false

           showSpinning()
       }
       func hideLoading() {
           self.setTitle(customTitle, for: .normal)
           activityIndicator.stopAnimating()
           isEnabled = true
       }

       private func createActivityIndicator() -> UIActivityIndicatorView {
           let activityIndicator = UIActivityIndicatorView()
           activityIndicator.hidesWhenStopped = true
           activityIndicator.color = UIColor(named: "buttonGrayEnableColor")
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
*/
