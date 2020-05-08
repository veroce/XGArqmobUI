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
    public var titleFont = UIFont.bodyRegular()
    
    /// Font for text field
    public var textFont = UIFont.bodyRegular()
    
    /// Text field background 
    public var backgroundColor = UIColor.clear
    
    /// Title label text color
    public var titleColor =  UIColor(named: "primaryTextColor") ?? UIColor(named: "primaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    /// TextField text color
    public var textColor = UIColor(named: "primaryTextColor") ??  UIColor(named: "primaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    /// Font for alert label
    public var alertFont = UIFont.caption1Regular()
    
    /// Alert status color
    public var alertColor = UIColor(named: "errorColor") ?? UIColor(named: "errorColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
    
    /// Secure icon image (On status)
   // public var visibleOnImage = IconsLibrary.imageOfEye(color: .red)
    
    /// Secure icon image (Off status)
    //public var visibleOffImage = IconsLibrary.imageOfEyeoff(color: .red)
    
    public override init() {}
}
