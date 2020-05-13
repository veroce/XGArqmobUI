//
//  RadioButton.swift
//  GuessList
//
//  Created by Verónica Rodríguez Cepeda on 23/12/2019.
//  Copyright © 2019 Sixtema. All rights reserved.
//

import UIKit
@objc
public protocol RadioButtonDelegate {
    func optionSelected(sender: RadioButton)
}
@objc
open class RadioButton: UIView {
    
    @IBOutlet weak var viewBorder: UIView!
    @IBOutlet weak var viewFill: UIView!
    @IBOutlet open weak var lbTitle: UILabel!
    var isSelected: Bool = false
    @objc public var delegate: RadioButtonDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        let bundle = Bundle(for: RadioButton.self)
        let xibView = bundle.loadNibNamed("RadioButton", owner: self, options: nil)!.first as! UIView
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
    }
    //MARK: - Style methods
    
    public func setSelected() {
        self.viewBorder.layer.cornerRadius = self.viewBorder.bounds.width / 2
        self.viewBorder.layer.borderColor = UIColor(named:"primaryColor")?.cgColor
        self.viewBorder.layer.borderWidth = 2.0
        self.viewFill.isHidden = false
        self.viewFill.layer.cornerRadius = self.viewFill.bounds.width / 2
        self.viewFill.layer.borderColor = UIColor(named:"checkboxSelectedColor")?.cgColor
        self.viewFill.backgroundColor = UIColor(named:"primaryColor")
        lbTitle.textColor = UIColor(named:"checkboxBorderColor")
        self.isSelected = true
    }
    
    public func setDiselect() {
        self.viewBorder.layer.cornerRadius = self.viewBorder.bounds.width / 2
        self.viewBorder.layer.borderColor = UIColor(named:"checkboxBorderColor")?.cgColor
        lbTitle.textColor = UIColor(named:"checkboxBorderColor")
        self.viewBorder.layer.borderWidth = 2.0
        self.viewFill.isHidden = true
        self.isSelected = false
    }
    public func setDisable() {
        self.viewBorder.layer.cornerRadius = self.viewBorder.bounds.width / 2
        self.viewBorder.layer.borderColor = UIColor(named:"checkboxBorderDisableColor")?.cgColor
         lbTitle.textColor = UIColor(named:"checkboxBorderDisableColor")
        self.viewBorder.layer.borderWidth = 2.0
        self.viewFill.isHidden = true
        self.isSelected = false
        isUserInteractionEnabled = false
        alpha = 0.7
    }
    
    //MARK: - TapGesture
    
    @IBAction func radioButtonTouch(_ sender: Any) {
        if isSelected == false {
            isSelected = true
            setSelected()
            guard let delegate = self.delegate else {
                return
            }
            delegate.optionSelected(sender: self)
        }
        
    }
    
}
