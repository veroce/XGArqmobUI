//
//  AnimateFieldConfiguration.swift
//  FashTime
//
//  Created by Alberto Aznar de los Ríos on 02/04/2019.
//  Copyright © 2019 FashTime Ltd. All rights reserved.
//

import Foundation
import UIKit
public struct AnimatedFieldFormat {
    
    /// Title always visible
    public var titleAlwaysVisible = false
    
    /// Font for title label
    public var titleFont = Theme.current.caption1Semibold
    
    /// Font for text field
    public var textFont = Theme.current.bodyRegular
    
    /// Font for counter
    public var counterFont = Theme.current.caption2Regular
    
    /// Line color
    public var lineColor = UIColor(named: "lineTextFieldColor")
    
    /// Title label text color
    public var titleColor =  UIColor(named: "primaryTextColor")
    
    /// TextField text color
    public var textColor = UIColor(named: "primaryTextColor")
    
    /// Counter text color
    public var counterColor = UIColor.darkGray
    
    /// Enable alert
    public var alertEnabled = true
    
    /// Font for alert label
    public var alertFont = Theme.current.caption1Regular
    
    /// Alert status color
    public var alertColor = UIColor(named: "errorColor")
    
    /// Colored alert field text
    public var alertFieldActive = true
    
    /// Colored alert line
    public var alertLineActive = true
    
    /// Colored alert title
    public var alertTitleActive = true
    
    /// Alert position
    public var alertPosition = AnimatedFieldAlertPosition.bottom
    
    /// Secure icon image (On status)
    public var visibleOnImage = IconsLibrary.imageOfEye(color: .red)
    
    /// Secure icon image (Off status)
    public var visibleOffImage = IconsLibrary.imageOfEyeoff(color: .red)
    
    /// Enable counter label
    public var counterEnabled = false
    
    /// Set count down if counter is enabled
    public var countDown = false
    
    /// Enable counter animation on change
    public var counterAnimation = false
    
    /// Highlight color when becomes active
    public var highlightColor: UIColor? = UIColor(named: "primaryColor")
    
    /// Left icon image status
    public var visibleLeftImage = true
    
    /// Left icon image
    public var leftImage: UIImage?
    
    /// Tint color left icon
       public var leftIconColor: UIColor? = UIColor(named: "primaryTextColor")
    
    public init() {}
}
