//
//  AmOutlineButton.swift
//  demoAr
//
//  Created by Vero on 30/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
public class AmOutlineButton: SimpleButton {
    override func configureButtonStyles() {
        super.configureButtonStyles()
        setTitleColor(UIColor(named: "buttonEnableColor"), for: .normal)
        setTitleColor(UIColor(named: "buttonHighlightedColor"), for: .highlighted)
        setTitleColor(UIColor(named: "buttonDisabledColor"), for: .highlighted)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        setBorderColor(UIColor(named: "buttonEnableColor") ?? UIColor.systemRed, for: .normal, animationDuration: 0.3)
        setBorderColor(UIColor(named: "buttonHighlightedColor") ?? UIColor.systemRed, for: .highlighted, animated: false)
        setBorderColor(UIColor(named: "buttonDisabledColor") ?? UIColor.systemRed, for: .disabled, animated: false)
        setBorderWidth(1.0, for: .normal)
        loadingColor = UIColor(named: "buttonEnableColor")
        clipsToBounds = true
        layer.cornerRadius = 8.0
        
    }
}
/*class AmOutlineButton: UIButton {
    
    var activityIndicator: UIActivityIndicatorView!
    var customTitle: String?
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        setTitleColor(UIColor(named: "buttonEnableColor"), for: .normal)
        setTitleColor(UIColor(named: "buttonHighlightedColor"), for: .highlighted)
        setTitleColor(UIColor(named: "buttonDisabledColor"), for: .disabled)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 14) ?? UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.semibold)
        layer.cornerRadius = 8.0
        clipsToBounds = true
        layer.borderWidth = 1.0
        layer.borderColor = UIColor(named: "buttonEnableColor")?.cgColor
    }
    override var isHighlighted: Bool{
        didSet {
            if (isHighlighted) {
                layer.cornerRadius = 10.0
                clipsToBounds = true
                layer.borderWidth = 1.0
                layer.borderColor = UIColor(named: "buttonHighlightedColor")?.cgColor
            
            }
            else {
                layer.cornerRadius = 8.0
                clipsToBounds = true
                layer.borderWidth = 1.0
                layer.borderColor = UIColor(named: "buttonEnableColor")?.cgColor
            }
        }
    }
    
    override var isEnabled: Bool{
        didSet {
            if (isEnabled) {
                layer.cornerRadius = 8.0
                clipsToBounds = true
                layer.borderWidth = 1.0
                layer.borderColor = UIColor(named: "buttonEnableColor")?.cgColor
            }
            else {
                layer.cornerRadius = 8.0
                clipsToBounds = true
                layer.borderWidth = 1.0
                layer.borderColor = UIColor(named: "buttonDisabledColor")?.cgColor
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
        self.layer.borderColor = UIColor(named: "buttonDisabledColor")?.cgColor
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
        activityIndicator.color = UIColor(named: "buttonEnableColor")
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
    
    
}*/
