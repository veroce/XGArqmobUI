//
//  BotonesFlotantesVC.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class BotonesFlotantesVC: UIViewController {
    
    @IBOutlet weak var btnExtendedButton: AmFloatingExtendedButton!
    @IBOutlet weak var btnMiniButton: AmFloatingButton!
    @IBOutlet weak var tableView: UITableView!
    
    var options = ["Botón reducido", "Botón con texto"]
    
    var itemSelected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Botones flotantes"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tintColor = UIColor(named: "primaryColor")
        navigationItem.backBarButtonItem?.title = ""
        let appearance = AmFloatingButtonStyle()
        appearance.backgroundColorNormal = .red
        appearance.backgroundColorHighlighted = .green
        appearance.backgroundColorDisabled = .brown
        appearance.titleColorNormal = .white
        btnMiniButton.style = appearance
        btnMiniButton.tintColor = .white
        
        showButton()
        
        // Do any additional setup after loading the view.
        
    }
    
    
    func showButton() {
        if itemSelected == 0 {
            btnMiniButton.isHidden = false
            btnExtendedButton.isHidden = true
        }else{
            btnMiniButton.isHidden = true
            btnExtendedButton.isHidden = false
        }
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
extension BotonesFlotantesVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellFloatingButton", for: indexPath)
        cell.textLabel?.text = options[indexPath.row]
        if itemSelected == indexPath.row {
            cell.accessoryType = .checkmark
        }else {
            cell.accessoryType = .none
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        itemSelected = indexPath.row
        showButton()
        tableView.reloadData()
    }
}
