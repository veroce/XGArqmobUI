//
//  AmCardMap.swift
//  arqmob-ui
//
//  Created by Vero on 14/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

public class AmCardMap: UIView {
    
    @IBOutlet weak var imgElemento: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbLocation: UILabel!
    @IBOutlet weak var lbCategory: UILabel!
    @IBOutlet weak var viewContainer: UIView!
    
    open var style = AmCardStyle() {
        didSet {
            loadStyle()
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    
    private func commonInit(){
        let xibView = Bundle.main.loadNibNamed("AmCardMap", owner: self, options: nil)!.first as! UIView
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
        loadStyle()
    }
    private func loadStyle(){
        viewContainer.layer.masksToBounds = false
        viewContainer.layer.shadowOpacity = 0.8
        viewContainer.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
        viewContainer.layer.cornerRadius = 5
        lbTitle.font = style.titleFont
        lbLocation.font = style.locationFont
        lbCategory.font = style.categoryFont
        lbTitle.textColor = style.titleColor
        lbLocation.textColor = style.locationColor
        lbCategory.textColor = style.categoryColor
        viewContainer.backgroundColor = style.backgroundColor
        viewContainer.layer.shadowColor = style.shadowColor.cgColor
        
    }
    open func loadData(title: String, image: String, location: String, category: String? = nil){
        lbTitle.text = title
        lbLocation.text = location
        lbCategory.text = category?.uppercased()
        // Es una imagen del sistema
        if let image = UIImage(named: image) {
            imgElemento.image = image
        }else{
            // Enlace a una url
            
        }
    }
    
}
