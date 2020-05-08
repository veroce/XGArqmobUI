//
//  ListadoVC.swift
//  demoAr
//
//  Created by Vero on 23/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class ListadoVC: UIViewController {
    var destacados: Array<ElementoListado> = []
    var items: Array<ElementoListado> = []
    @IBOutlet weak var tableView: UITableView!
    let tableController = ListadoElementosController()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        configureTable()

        // Do any additional setup after loading the view.
    }
    
    func loadData() {
        let xunta = ElementoListado(title: "Xunta", image: "ic_xunta", localizacion: "", categoria: "ADMINISTRACION")
        let amtega = ElementoListado(title: "Amtega", image: "ic_amtega", localizacion: "", categoria: "Administracion")
        let turismo = ElementoListado(title: "Axencia de Turismo de Galicia", image: "ic_turismo", localizacion: "Calle Celedonio de Uribe, nº 2, 15003 - A Coruña", categoria: "Oficina de Turismo")
        
        destacados = [xunta, amtega, turismo]
        let turismoCoruña = ElementoListado(title: "Axencia de Turismo de Coruña", localizacion: "Calle Celedonio de Uribe, nº 2, 15003 - A Coruña", categoria: "Oficina de Turismo")
        let turismoFerrol = ElementoListado(title: "Axencia de Turismo de Ferrol",  localizacion: "Plaza Camilo José Cela, nº s/n, 15403 - Ferrol", categoria: "Oficina de Turismo")
        items = [turismoCoruña, turismoFerrol, turismo]
    }
    
    func configureTable() {
        self.tableView.delegate = self.tableController
        self.tableView.dataSource = self.tableController
        self.tableView.register(UINib(nibName: "CellElemento", bundle: nil), forCellReuseIdentifier: "CellElemento")
        self.tableView.register(UINib(nibName: "CellListRecomendacion", bundle: nil), forCellReuseIdentifier: "CellListRecomendacion")
        tableController.destacados = destacados
        tableController.items = items
        tableController.delegate = self
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension ListadoVC: ListadoDelegate {
    func itemSelect() {
        if let index = tableView.indexPathForSelectedRow {
            let item = items[index.row]
            view.makeToast(item.title)
            
        }
        
    }
    
    
}
