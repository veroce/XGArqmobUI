//
//  ListadoAreaServicioController.swift
//  autocaravanas
//
//  Created by Verónica Rodríguez Cepeda on 20/11/2019.
//  Copyright © 2019 Sixtema All rights reserved.
//

import UIKit
enum SECCIONES_TABLA: Int {
    case DESTACADO = 0
    case LISTADO = 1
}
protocol  ListadoDelegate {
    func itemSelect()
}

class ListadoElementosController: NSObject {
    
    var items: Array<ElementoListado> = []
    var destacados: Array<ElementoListado> = []
    var delegate: ListadoDelegate?
}
extension ListadoElementosController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == SECCIONES_TABLA.DESTACADO.rawValue {
            return 150.0
        }
        return 120.0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 8.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let delegate = self.delegate else{
            return
        }
        delegate.itemSelect()
    }
}

extension ListadoElementosController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == SECCIONES_TABLA.DESTACADO.rawValue {
            return 1
        }
        return self.items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == SECCIONES_TABLA.DESTACADO.rawValue {
            let cell: CellListRecomendacion = tableView.dequeueReusableCell(withIdentifier: "CellListRecomendacion", for: indexPath) as! CellListRecomendacion
            cell.items = destacados
            cell.loadData()
            return cell
        }else{
            let cell: CellElemento = tableView.dequeueReusableCell(withIdentifier: "CellElemento", for: indexPath) as! CellElemento
            let item = self.items[indexPath.row]
            cell.loadData(item: item)
            return cell
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        if section == SECCIONES_TABLA.DESTACADO.rawValue {
            label.text = "Destacamos"
        }else {
            label.text = "Elementos cercanos"
        }
        label.font = UIFont.bodyBold()
        label.textColor = UIColor(named: "primaryTextColor")
        
        headerView.addSubview(label)
        headerView.addConstraint(NSLayoutConstraint(item: label, attribute: .trailing, relatedBy: .equal, toItem: headerView, attribute: .trailing, multiplier: 1, constant: 20.0))
        headerView.addConstraint(NSLayoutConstraint(item: label, attribute: .leading, relatedBy: .equal, toItem: headerView, attribute: .leading, multiplier: 1, constant: 20.0))
        headerView.addConstraint(NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: headerView, attribute: .centerY, multiplier: 1, constant: 0))
        
        return headerView
    }
}
