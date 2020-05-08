//
//  MenuVC.swift
//  demoAr
//
//  Created by Vero on 17/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
protocol MenuDelegate {
    func menuSelected(vcIdentifier: String)
    func showTutorial()
}

class MenuVC: UIViewController {
    
    var items = [MenuItem]()
    @IBOutlet weak var tableView: UITableView!
    var itemSelected: MenuItem?
    var delegate: MenuDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        configureTableView()
        
        // Do any additional setup after loading the view.
    }
    
    func loadData() {
        let itemApp = MenuItem(title: "Aplicaciones", icon: "ic_app", identifier: "kAplicacion")
        let itemMapa = MenuItem(title: "Mapa", icon: "ic_mapa", identifier: "kMapa")
        let itemPantalla = MenuItem(title: "Pantallas", icon: "ic_pantalla", identifier: "kPantallas")
        let itemElementos = MenuItem(title: "Elementos", icon: "ic_elementos", identifier: "kElementos")
        let itemInformacion = MenuItem(title: "Información", icon: "ic_informacion", identifier: "kInfoApp")
        let itemAjustes = MenuItem(title: "Ajustes", icon: "ic_ajustes", identifier: "kAjustes")
        items = [itemApp, itemMapa, itemPantalla, itemElementos, itemInformacion, itemAjustes]
        itemSelected = items.first
    }
    
    
    
    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CellMenu", bundle: nil), forCellReuseIdentifier: "CellMenu")
        tableView.reloadData()
    }
    
    @IBAction func btnShowTutorialTouch(_ sender: Any) {
        guard let delegate = delegate else {
            return
        }
        delegate.showTutorial()
    }
}
extension MenuVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = items[indexPath.row]
        itemSelected = data
        
        tableView.reloadData()
        guard let delegate = delegate else {
            return
        }
        delegate.menuSelected(vcIdentifier: itemSelected!.identifier)
    }
    
}

extension MenuVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = items[indexPath.row]
        
        let cell: CellMenu = tableView.dequeueReusableCell(withIdentifier: "CellMenu", for: indexPath) as! CellMenu
        
        cell.loadData(data: data, selected: data == itemSelected)
        return cell
    }
    
    
}
