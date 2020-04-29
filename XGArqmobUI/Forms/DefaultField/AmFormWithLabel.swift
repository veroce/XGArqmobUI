//
//  AmFormWithLabel.swift
//  demoAr
//
//  Created by Vero on 06/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

open class AmFormWithLabel: UIView {
    
    @IBOutlet weak private var lbTitle: UILabel!
    @IBOutlet weak public var textField: CustomTextField!
    @IBOutlet weak private var lbError: UILabel!
    
    /////////////////////////////////////////////////////////////////////////////
    /// Object that configure `DefaultField` view. You can setup `Default` with
    /// your own parameters. See also `DefaultFieldFormat` implementation.
    
    open var format = DefaultFieldFormat() {
        didSet {
            lbTitle.font = format.titleFont
            lbTitle.textColor = format.titleColor
            textField.font = format.textFont
            textField.textColor = format.textColor
            lbError.font = format.alertFont
            lbError.textColor = format.alertColor
            textField.backgroundColor = format.backgroundColor
        }
    }
    
    open var keyboadType = UIKeyboardType.default {
        didSet {
            textField.keyboardType = keyboadType
        }
    }
    open var isSecureTextEntry = false {
        didSet {
            textField.isSecureTextEntry = isSecureTextEntry
        }
    }
    open var placeholder: String? {
        didSet {
            textField.placeholder = placeholder
        }
    }
    open var labeltitle: String? {
        didSet {
            lbTitle.text = labeltitle
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        let xibView = Bundle.main.loadNibNamed("AmFormWithLabel", owner: self, options: nil)!.first as! UIView
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
        setupView()
        loadData()
    }
    
    private func setupView() {
        lbTitle.font = format.titleFont
        lbTitle.textColor = format.titleColor
        textField.textColor = format.textColor
        textField.font = format.textFont
        lbError.font = format.alertFont
        lbError.textColor = format.alertColor
        textField.backgroundColor = format.backgroundColor
        textField.layer.cornerRadius = 5.0
        /* textField.textColor = UIColor(named: "secondaryTextColor")
         textField.font = fontTextField
         lbError.font = fontLabelError
         lbError.textColor = UIColor(named: "errorColor")
         textField.backgroundColor = textFieldBackgroundColor*/
    }
    private func loadData() {
        lbTitle.text = labeltitle
        textField.placeholder = placeholder
    }
    
    
    public func showError(_ message: String) {
        lbError.text = message
        lbError.isHidden = false
    }
    
    public func hideError() {
        lbError.isHidden = true
    }
    
    
    
}
