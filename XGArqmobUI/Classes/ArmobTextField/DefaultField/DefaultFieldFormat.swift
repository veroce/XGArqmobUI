//
//  DefaultFieldFormat.swift
//  demoAr
//
//  Created by Vero on 07/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
@objc
public class DefaultFieldFormat: NSObject {
    
    /// Font for title label
    @objc public var titleFont = UIFont.bodyRegular()
    
    /// Font for text field
    @objc public var textFont = UIFont.bodyRegular()
    
    /// Text field background 
    @objc public var backgroundColor = UIColor.clear
    
    /// Title label text color
    @objc public var titleColor =  UIColor(named: "primaryTextColor") ?? UIColor(named: "primaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    /// TextField text color
    @objc public var textColor = UIColor(named: "primaryTextColor") ??  UIColor(named: "primaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    /// Font for alert label
    @objc public var alertFont = UIFont.caption1Regular()
    
    /// Alert status color
    @objc public var alertColor = UIColor(named: "errorColor") ?? UIColor(named: "errorColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    /// Secure icon image (On status)
   // @objc public var visibleOnImage = IconsLibrary.imageOfEye(color: .red)
    
    /// Secure icon image (Off status)
    //@objc public var visibleOffImage = IconsLibrary.imageOfEyeoff(color: .red)
    
    @objc public override init() {}
}
