//
//  DialogosVC.swift
//  demoAr
//
//  Created by Vero on 27/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class DialogosVC: UITableViewController {
     var items = ["Por defecto", "Bottom sheet", "Compartir", "Personalizado"]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
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
           let cell = tableView.dequeueReusableCell(withIdentifier: "CellDialogo", for: indexPath)
           cell.textLabel?.text = items[indexPath.row]
           return cell
       }
       override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 0.1
       }
       override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           if indexPath.row == 0 {
               showAlert()
           }else if indexPath.row == 1 {
               showAlertSheet()
           }else if indexPath.row == 2 {
              showShareAlert()
           }else {
               showCustomAlert()
           }
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Título diálogo", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fermentum purus sit amet urna malesuada vulputate sed eget est.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    
     @IBAction  func showAlertSheet() {
        let alert = UIAlertController(title: "Titulo alert", message: "Lorem ipsum dolor sit amet", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Aplicaciones", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Mapas", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }
    
    @IBAction  func showShareAlert() {
        let items = ["This app is my favorite"]
        let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(ac, animated: true)
    }
    
    @IBAction  func showCustomAlert() {
        let bundle = Bundle(for: AmAlert.self)
        let alert = AmAlert(nibName: "AmAlert", bundle: bundle)
        alert.loadTitle("Título del diálogo", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fermentum purus sit amet urna malesuada vulputate sed eget est.", image: "cusotm_alert")
        alert.addAction(title: "Aceptar") { (button) in
            
        }
        alert.modalPresentationStyle = .overCurrentContext
        alert.modalTransitionStyle = .crossDissolve
        present(alert, animated: true, completion: nil)
        
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
