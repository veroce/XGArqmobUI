//
//  AmErrorView.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
protocol AmErrorViewDelegate {
    func buttonTouch()
}

class AmErrorView: UIView {
    
    @IBOutlet weak var ilustracion: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbMensaje: UILabel!
    @IBOutlet weak var btnReintentar: AmDefaultGrayButton!
    @IBOutlet weak var viewError: UIView!
    var delegate: AmErrorViewDelegate?
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
        let xibView = Bundle.main.loadNibNamed("AmErrorView", owner: self, options: nil)!.first as! UIView
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
    open func showErrorConnectionWithTitle(_ title: String, message: String, image: String? = nil){
        viewEmpty.isHidden = true
        lbMensaje.text = message
        lbTitle.text = title
        btnReintentar.setTitle("Reintentar", for: .normal)
        if let image = image {
            if let uiimage = UIImage(named: image) {
                ilustracion.image = uiimage
            }else{
                
            }
        }else{
            ilustracion.image = UIImage(named:"notConnection")
        }
    }
    open func showErrorNotFoundWithTitle(_ title: String, message: String, image: String? = nil){
        viewEmpty.isHidden = true
        lbMensaje.text = message
        lbTitle.text = title
        btnReintentar.setTitle("Reintentar", for: .normal)
        if let image = image {
            if let uiimage = UIImage(named: image) {
                ilustracion.image = uiimage
            }else{
                
            }
        }else{
            ilustracion.image = UIImage(named:"notFound")
        }
    }
    open func showErrorUnknownWithTitle(_ title: String, message: String, image: String? = nil){
        viewEmpty.isHidden = true
        lbMensaje.text = message
        lbTitle.text = title
        btnReintentar.setTitle("Reintentar", for: .normal)
        if let image = image {
            if let uiimage = UIImage(named: image) {
                ilustracion.image = uiimage
            }else{
                
            }
        }else{
            ilustracion.image = UIImage(named:"unknown")
            
        }
    }
    open func showEmptyDataWithTitle(_ title: String, image: String? = nil){
        viewError.isHidden = true
        lbNoResults.text = title
        if let image = image {
            if let uiimage = UIImage(named: image) {
                imgNoResults.image = uiimage
            }else{
                
            }
        }else{
            imgNoResults.image = UIImage(named:"emptyData")
        }
    }
    
    @IBAction func btnButtonTouch(_ sender: Any) {
        guard let delegate = self.delegate else {
            return
        }
        delegate.buttonTouch()
    }
}
