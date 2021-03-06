//
//  AmSplash.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import Kingfisher
@objc
open class AmSplash: UIView {
    
    @IBOutlet weak var logoAplicacion: UIImageView!
    @IBOutlet weak var imgFondo: UIImageView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    
    private func commonInit(){
        let bundle = Bundle(for: AmSplash.self)
        let xibView = bundle.loadNibNamed("AmSplash", owner: self, options: nil)!.first as! UIView
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
    }
    
    @objc open func loadImageFondo(_ image: String, logo: String){
        if let image = UIImage(named: image) {
            imgFondo.image = image
        }else{
            // Enlace a una url
        }
        
        if let image = UIImage(named: logo) {
            logoAplicacion.image = image
        }else{
            if let url = URL(string: image) {
                logoAplicacion.kf.setImage(with: url)
            }
            
        }
        
        
    }
}
