//
//  CellListRecomendacion.swift
//  demoAr
//
//  Created by Vero on 25/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class CellListRecomendacion: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    var controller = RecomendadosCollectionController()
    var items: Array<ElementoListado> = []
    override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }
        
        func loadData() {
            self.collectionView.register(UINib(nibName: "CellRecomendacion", bundle: nil), forCellWithReuseIdentifier: "CellRecomendacion")
            self.collectionView.dataSource = self.controller
            self.collectionView.delegate = self.controller
            self.controller.items = self.items
        }
}
