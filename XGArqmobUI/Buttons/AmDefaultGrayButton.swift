//
//  AmDefaultGrayButton.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
public class AmDefaultGrayButton: SimpleButton {
    public override func configureButtonStyles() {
        super.configureButtonStyles()
        setBackgroundColor(UIColor(named: "buttonGrayEnableColor") ?? .clear, for: .normal, animated: true, animationDuration: 0.2)
        setBackgroundColor(UIColor(named: "buttonGrayHighlightedColor") ?? .clear, for: .highlighted, animated: false)
        setBackgroundColor(UIColor(named: "buttonGrayDisabledColor") ?? .clear, for: .disabled, animated: false)
        setBackgroundColor(color: UIColor(named: "buttonGrayDisabledColor") ?? .clear, forState: SimpleButtonControlState.loading)
        setTitleColor(UIColor.white, for:.normal)
        setTitleColor(UIColor.white, for: .highlighted)
        setTitleColor(.white, for: .disabled)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        clipsToBounds = true
        layer.cornerRadius = 8.0
        clipsToBounds = true
    }
}
/*
class AmDefaultGrayButton: UIButton {
    
    var activityIndicator: UIActivityIndicatorView!
    var customTitle: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    override func draw(_ rect: CGRect) {
        // Drawing code
        super.draw(rect)
        clipsToBounds = true
        setTitleColor(UIColor.white, for:.normal)
        setTitleColor(UIColor.white, for: .highlighted)
        setTitleColor(.white, for: .disabled)
        titleLabel?.font = UIFont(name: "Raleway-Semibold", size: 14) ?? UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.semibold)
        setBackgroundColor(color: UIColor(named: "buttonGrayEnableColor") ?? .clear, forState: .normal)
        setBackgroundColor(color: UIColor(named: "buttonGrayDisabledColor") ?? .clear, forState: .disabled)
        layer.cornerRadius = 8.0
        clipsToBounds = true
    }
    
    override open var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? UIColor(named: "buttonGrayHighlightedColor") : UIColor(named: "buttonGrayEnableColor")
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
        activityIndicator.color = .white
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
