//
//  FormularioMainVC.swift
//  demoAr
//
//  Created by Vero on 08/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class FormularioMainVC: UITableViewController {
    var items = ["Radio & Check buttons", "Inputs", "Ejemplo login con imagen", "Ejemplo login sin imagen"]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        title = "Formularios"
        tableView.tableFooterView = UIView() 
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return items.count
       }
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "CellFormulario", for: indexPath)
           cell.textLabel?.text = items[indexPath.row]
           return cell
       }
       override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 0.1
       }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
              if indexPath.row == 0 {
               performSegue(withIdentifier: "goToRadioButtons", sender: nil)
              }else if indexPath.row == 1 {
                 performSegue(withIdentifier: "goToInputs", sender: nil)
              }else if indexPath.row == 2 {
                 performSegue(withIdentifier: "goLoginImagen", sender: nil)
              }else {
                  performSegue(withIdentifier: "goLogin", sender: nil)
              }
    }

}
