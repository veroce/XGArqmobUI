//
//  FavoritosCollectionController.swift
//  autocaravanas
//
//  Created by Verónica Rodríguez Cepeda on 21/11/2019.
//  Copyright © 2019 Sixtema All rights reserved.
//

import UIKit

class RecomendadosCollectionController: NSObject {
    var items: Array<ElementoListado> = []
}

extension RecomendadosCollectionController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CellRecomendacion = collectionView.dequeueReusableCell(withReuseIdentifier: "CellRecomendacion", for: indexPath) as! CellRecomendacion
        let item = items[indexPath.row]
        cell.loadData(item: item)
        return cell
    }
}

extension RecomendadosCollectionController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100.0, height: 150.0)
    }
}
