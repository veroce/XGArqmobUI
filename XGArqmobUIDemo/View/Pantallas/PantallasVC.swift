//
//  PantallasVC.swift
//  demoAr
//
//  Created by Vero on 27/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class PantallasVC: UITableViewController {
    var items = ["Splash", "Tutorial", "Errores"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        tableView.tableFooterView = UIView() 
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellPantalla", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "goToSplash", sender: nil)
        }else if indexPath.row == 1 {
            openTutorial(self)
        }else if indexPath.row == 2 {
            performSegue(withIdentifier: "goToErrors", sender: nil)
        }
        
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    @IBAction func btnMenuTouch(_ sender: Any) {
        sideMenuController?.showLeftView(animated: true, completionHandler: nil)
        
    }
    @IBAction func openTutorial(_ sender: Any) {
        let page1 = AmTutorialItem(image: "page1", title: "¡Bienvenidos!", body: "¡Hola! Estás a punto de entrar en el Manual de estilos para las Aplicaciones de Turismo de Galicia")
        let page2 = AmTutorialItem(image: "page2", title: "Selecciona los colores", body: "Desde la pantalla de Ajustes podrás cambiar la visualización de la aplicación para ver como quedan los distintos modos que se ofrecen")
        let page3 = AmTutorialItem(image: "page3", title: "Ahorra tiempo", body: "A través de este manual podrás ver como quedan los elementos antes de implementarlos así como consultar para comprobar cual debe de emplearse")
        
        let bundle = Bundle(for: AmTutorialMainVC.self)
        let sb = UIStoryboard(name: "AmTutorial", bundle: bundle)
        if let nc = sb.instantiateInitialViewController() {
            if let vc: AmTutorialMainVC = nc.children.first as? AmTutorialMainVC {
                vc.items = [page1, page2, page3]
            }
            nc.modalPresentationStyle = .fullScreen
            nc.modalTransitionStyle = .crossDissolve
            
            present(nc, animated: true, completion: nil)
            
        }
        
        
    }
}
