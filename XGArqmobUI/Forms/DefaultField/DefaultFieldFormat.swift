//
//  DefaultFieldFormat.swift
//  demoAr
//
//  Created by Vero on 07/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

public struct DefaultFieldFormat {
    
    /// Font for title label
    public var titleFont = Theme.current.bodyRegular
    
    /// Font for text field
    public var textFont = Theme.current.bodyRegular
    
    /// Text field background 
    public var backgroundColor = UIColor.clear
    
    /// Title label text color
    public var titleColor =  UIColor(named: "primaryTextColor")
    
    /// TextField text color
    public var textColor = UIColor(named: "primaryTextColor")
    
    /// Font for alert label
    public var alertFont = Theme.current.caption1Regular
    
    /// Alert status color
    public var alertColor = UIColor(named: "errorColor")
    
    /// Secure icon image (On status)
    public var visibleOnImage = IconsLibrary.imageOfEye(color: .red)
    
    /// Secure icon image (Off status)
    public var visibleOffImage = IconsLibrary.imageOfEyeoff(color: .red)
    
    public init() {}
}
