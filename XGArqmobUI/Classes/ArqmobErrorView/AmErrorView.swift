//
//  AmErrorView.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
@objc
public protocol AmErrorViewDelegate {
    @objc func buttonTouch()
}
@objc
open class AmErrorView: UIView {
    
    @IBOutlet weak var ilustracion: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbMensaje: UILabel!
    @IBOutlet weak var btnReintentar: AmDefaultGrayButton!
    @IBOutlet weak var viewError: UIView!
    @objc public var delegate: AmErrorViewDelegate?
    @IBOutlet weak var viewEmpty: UIView!
    @IBOutlet weak var lbNoResults: UILabel!
    @IBOutlet weak var imgNoResults: UIImageView!
    
    open var style = AmErrorViewStyle() {
        didSet {
            loadStyle()
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
        let bundle = Bundle(for: AmErrorView.self)
        let xibView = bundle.loadNibNamed("AmErrorView", owner: self, options: nil)!.first as! UIView
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
        loadStyle()
    }
    
    private func loadStyle() {
        backgroundColor = style.backgroundColor
        viewEmpty.backgroundColor = style.backgroundColor
        viewError.backgroundColor = style.backgroundColor
        lbTitle.font = style.titleFont
        lbMensaje.font = style.messageFont
        lbNoResults.font = style.emptyResultsFont
        lbTitle.textColor = style.titleColor
        lbMensaje.textColor = style.messageColor
        lbNoResults.textColor = style.emptyResultsColor
        
        
    }
    @objc open func showErrorConnectionWithTitle(_ title: String, message: String, image: String? = nil){
        viewEmpty.isHidden = true
        lbMensaje.text = message
        lbTitle.text = title
        btnReintentar.setTitle("Reintentar", for: .normal)
        let bundle = Bundle(for: AmErrorView.self)
        if let image = image {
            if let uiimage = UIImage(named: image) {
                ilustracion.image = uiimage
            }else{
                ilustracion.image =   UIImage(named: "AmNotConnection", in: bundle, compatibleWith: nil)
                
            }
        }else{
            ilustracion.image =   UIImage(named: "AmNotConnection", in: bundle, compatibleWith: nil)
        }
    }
    @objc open func showErrorNotFoundWithTitle(_ title: String, message: String, image: String? = nil){
        viewEmpty.isHidden = true
        lbMensaje.text = message
        lbTitle.text = title
        let bundle = Bundle(for: AmErrorView.self)
        
        btnReintentar.setTitle("Reintentar", for: .normal)
        if let image = image {
            if let uiimage = UIImage(named: image) {
                ilustracion.image = uiimage
            }else{
                ilustracion.image =   UIImage(named: "AmNotFound", in: bundle, compatibleWith: nil)
                
            }
        }else{
            ilustracion.image =   UIImage(named: "AmNotFound", in: bundle, compatibleWith: nil)
            
        }
    }
    @objc open func showErrorUnknownWithTitle(_ title: String, message: String, image: String? = nil){
        viewEmpty.isHidden = true
        lbMensaje.text = message
        lbTitle.text = title
        let bundle = Bundle(for: AmErrorView.self)
        
        btnReintentar.setTitle("Reintentar", for: .normal)
        if let image = image {
            if let uiimage = UIImage(named: image) {
                ilustracion.image = uiimage
            }else{
                ilustracion.image =   UIImage(named: "AmUnknown", in: bundle, compatibleWith: nil)
                
            }
        }else{
            ilustracion.image =   UIImage(named: "AmUnknown", in: bundle, compatibleWith: nil)
            
            
        }
    }
    @objc open func showEmptyDataWithTitle(_ title: String, image: String? = nil){
        viewError.isHidden = true
        lbNoResults.text = title
        let bundle = Bundle(for: AmErrorView.self)
        
        if let image = image {
            if let uiimage = UIImage(named: image) {
                imgNoResults.image = uiimage
            }else{
                imgNoResults.image =   UIImage(named: "AmEmptyData", in: bundle, compatibleWith: nil)
            }
        }else{
            imgNoResults.image =   UIImage(named: "AmEmptyData", in: bundle, compatibleWith: nil)
            
        }
    }
    
    @IBAction func btnButtonTouch(_ sender: Any) {
        guard let delegate = self.delegate else {
            return
        }
        delegate.buttonTouch()
    }
}
