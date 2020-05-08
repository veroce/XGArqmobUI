//
//  BotonesMainVC.swift
//  demoAr
//
//  Created by Vero on 06/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class BotonesMainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tabBar: UITabBar!

    
    var options = ["Botones por defecto", "Botones outline", "Botones gris", "Botones flotantes", "Mostrar tab bar"]
    
    var itemSelected = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        title = "Acciones"
        tableView.tableFooterView = UIView() 
        // Do any additional setup after loading the view.
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
extension BotonesMainVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return  0.1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 4 {
            let cell: CellTabBar = tableView.dequeueReusableCell(withIdentifier: "CellTabBar", for: indexPath) as! CellTabBar
            cell.loadData(title: options[indexPath.row])
            cell.delegate = self
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellTypeButton", for: indexPath)
            cell.textLabel?.text = options[indexPath.row]
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "showBotonesPorDefecto", sender: nil)
        }else if indexPath.row == 1 {
            performSegue(withIdentifier: "showBotonesOutline", sender: nil)
        }else if indexPath.row == 2 {
             performSegue(withIdentifier: "showBotonesGrises", sender: nil)
        }else if indexPath.row == 3 {
            performSegue(withIdentifier: "showBotonesFlotantes", sender: nil)
        }
    }
}
extension BotonesMainVC: CellTabBarDelegate {
    func switchChangeValue(enable: Bool) {
        tabBar.isHidden = !enable
    }
    
    
}
