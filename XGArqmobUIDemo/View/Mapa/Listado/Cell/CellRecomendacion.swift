//
//  CellRecomendacion.swift
//  demoAr
//
//  Created by Vero on 25/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class CellRecomendacion: UICollectionViewCell {
    
    
    @IBOutlet weak var imgItem: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    private func loadStyle() {
        lbTitle.font = UIFont.footnoteBold()
        imgItem.layer.cornerRadius = 5.0
    }
    
    func loadData(item: ElementoListado){
        lbTitle.text = item.title
        if let image = item.image {
            if let uiimage = UIImage(named: image ) {
                imgItem.image = uiimage
            }else{
                
            }
        }else{
            // Imágen por defecto
            imgItem.image = UIImage(named: "placeholder")
        }
    }

}
