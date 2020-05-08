//
//  AjustesVC.swift
//  demoAr
//
//  Created by Vero on 06/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class AjustesVC: UITableViewController {
    
    var items = ["Español", "Galego", "English"]
    var rowSelected = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        }
        return 1
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Idioma"
        }else {
            return "Modo app"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellLang", for: indexPath)
            cell.textLabel?.text = items[indexPath.row]
            if indexPath.row == rowSelected {
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
                
            }
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellModeApp", for: indexPath)
            cell.textLabel?.text = "Visualización de la app"
            if #available(iOS 12.0, *) {
                cell.detailTextLabel?.text = traitCollection.userInterfaceStyle == .light ? "Modo light" : "Modo dark"
            } else {
                // Fallback on earlier versions
                cell.detailTextLabel?.text = "Modo light"
            }
            return cell
        }
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            rowSelected = indexPath.row
            tableView.reloadData()
        }else if indexPath.section == 1 {
            guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
                       return
                   }

                   if UIApplication.shared.canOpenURL(settingsUrl) {
                       UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
                           print("Settings opened: \(success)") // Prints true
                       })
                   }
        }
    }
    @IBAction func btnMenuTouch(_ sender: Any) {
        sideMenuController?.showLeftView(animated: true, completionHandler: nil)

    }
}
