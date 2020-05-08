//
//  CellElemento.swift
//  demoAr
//
//  Created by Vero on 25/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class CellElemento: UITableViewCell {
    
    @IBOutlet weak var imgElemento: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbLocalizacion: UILabel!
    @IBOutlet weak var lbCategoria: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        loadStyle()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func loadStyle() {
        lbTitle.font = UIFont.bodyBold()
        lbCategoria.font = UIFont.caption1Regular()
        lbLocalizacion.font = UIFont.caption1Regular()
        lbTitle.textColor = UIColor(named: "primaryTextColor")
        lbCategoria.textColor = UIColor(named: "secondaryTextColor")
        lbLocalizacion.textColor = UIColor(named: "secondaryTextColor")
    }
    
    func loadData(item: ElementoListado){
        lbTitle.text = item.title
        lbCategoria.text = item.categoria.uppercased()
        lbLocalizacion.text = item.localizacion
        
        if let image = item.image {
            if let uiimage = UIImage(named: image ) {
                imgElemento.image = uiimage
            }else{
                
            }
        }else{
            // Imágen por defecto
            imgElemento.image = UIImage(named: "placeholder")
        }
        
        
    }
    
}
