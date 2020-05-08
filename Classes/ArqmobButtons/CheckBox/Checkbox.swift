//
//  Checkbox.swift
//  GuessList
//
//  Created by Verónica Rodríguez Cepeda on 20/01/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

import UIKit
@objc
public protocol CheckboxDelegate {
    func optionSelected(sender: Checkbox)
}
@objc
open class Checkbox: UIView {
    @IBOutlet weak var viewBorder: UIView!
    @IBOutlet weak var viewFill: UIImageView!
    var isSelected: Bool = false
    public var delegate: CheckboxDelegate?
    
    @IBOutlet open weak var lbtitle: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        let bundle = Bundle(for: Checkbox.self)
        let xibView = bundle.loadNibNamed("Checkbox", owner: self, options: nil)!.first as! UIView
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
    }
    //MARK: - Style methods
    
    public func setSelected() {
        self.viewBorder.layer.cornerRadius = 3.0
        self.viewBorder.layer.borderColor = UIColor(named:"primaryColor")?.cgColor
        self.viewBorder.layer.borderWidth = 2.0
        self.viewBorder.backgroundColor = UIColor(named:"primaryColor")
        self.lbtitle.textColor = UIColor(named:"checkboxBorderColor")
        self.viewFill.isHidden = false
        self.isSelected = true
    }
    
    public func setDiselect() {
        self.viewBorder.layer.cornerRadius = 3.0
        self.viewBorder.layer.borderColor = UIColor(named:"checkboxBorderColor")?.cgColor
        self.viewBorder.layer.borderWidth = 2.0
        self.viewBorder.backgroundColor = .clear
         self.lbtitle.textColor = UIColor(named:"checkboxBorderColor")
        self.viewFill.isHidden = true
        self.isSelected = false
    }
    public func setDisabled(){
        self.viewBorder.layer.cornerRadius = 3.0
        self.viewBorder.layer.borderColor = UIColor(named:"checkboxBorderDisableColor")?.cgColor
         self.lbtitle.textColor = UIColor(named:"checkboxBorderDisableColor")
        self.viewBorder.layer.borderWidth = 2.0
        self.viewBorder.backgroundColor = .clear
        self.viewFill.isHidden = true
        isUserInteractionEnabled = false
        alpha = 0.7
        
    }
    
    //MARK: - TapGesture
    
    @IBAction func checkboxTouch(_ sender: Any) {
        if isSelected == false {
            isSelected = true
            setSelected()
        }else {
            isSelected = false
            setDiselect()
        }
        guard let delegate = self.delegate else {
            return
        }
        delegate.optionSelected(sender: self)
        
        
    }
}
