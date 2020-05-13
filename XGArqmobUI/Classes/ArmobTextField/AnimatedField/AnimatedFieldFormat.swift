//
//  AnimateFieldConfiguration.swift
//  FashTime
//
//  Created by Alberto Aznar de los Ríos on 02/04/2019.
//  Copyright © 2019 FashTime Ltd. All rights reserved.
//

import Foundation
import UIKit
@objc
open class AnimatedFieldFormat: NSObject {
    
    /// Title always visible
    @objc public var titleAlwaysVisible = false
    
    /// Font for title label
    @objc public var titleFont = UIFont.caption1Semibold()
    
    /// Font for text field
    @objc public var textFont = UIFont.bodyRegular()
    
    /// Font for counter
   @objc public var counterFont = UIFont.caption2Regular()
    
    /// Line color
    @objc public var lineColor = UIColor(named: "lineTextFieldColor")
    
    /// Title label text color
    @objc public var titleColor =  UIColor(named: "primaryTextColor")
    
    /// TextField text color
    @objc public var textColor = UIColor(named: "primaryTextColor")
    
    /// Counter text color
    @objc public var counterColor = UIColor.darkGray
    
    /// Enable alert
    @objc public var alertEnabled = true
    
    /// Font for alert label
    @objc public var alertFont = UIFont.caption1Regular()
    
    /// Alert status color
    @objc public var alertColor = UIColor(named: "errorColor")
    
    /// Colored alert field text
    @objc public var alertFieldActive = true
    
    /// Colored alert line
    @objc public var alertLineActive = true
    
    /// Colored alert title
    @objc public var alertTitleActive = true
    
    /// Alert position
     public var alertPosition = AnimatedFieldAlertPosition.bottom
    
    /// Secure icon image (On status)
    //@objc public var visibleOnImage = IconsLibrary.imageOfEye(color: .red)
    
    /// Secure icon image (Off status)
    //@objc public var visibleOffImage = IconsLibrary.imageOfEyeoff(color: .red)
    
    /// Enable counter label
    @objc public var counterEnabled = false
    
    /// Set count down if counter is enabled
    @objc public var countDown = false
    
    /// Enable counter animation on change
    @objc public var counterAnimation = false
    
    /// Highlight color when becomes active
    @objc public var highlightColor: UIColor? = UIColor(named: "primaryColor") ?? UIColor(named: "primaryColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    /// Left icon image status
    @objc public var visibleLeftImage = true
    
    /// Left icon image
    @objc public var leftImage: UIImage?
    
    /// Tint color left icon
       @objc public var leftIconColor: UIColor? = UIColor(named: "primaryTextColor") ?? UIColor(named: "primaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    @objc public override init() {}
}
