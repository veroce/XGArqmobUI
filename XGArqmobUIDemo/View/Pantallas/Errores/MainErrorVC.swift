//
//  MainErrorVC.swift
//  demoAr
//
//  Created by Vero on 25/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class MainErrorVC: UITableViewController {
    var items = ["Sin resultados", "Error de conexión", "Solicitud no encontrada", "Error desconocido"]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellError", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
             performSegue(withIdentifier: "goToErrorDetail", sender: ErrorType.emptyData)
        }else if indexPath.row == 1 {
             performSegue(withIdentifier: "goToErrorDetail", sender: ErrorType.connectionError)
        }else if indexPath.row == 2 {
            performSegue(withIdentifier: "goToErrorDetail", sender: ErrorType.notFound)
        }else {
             performSegue(withIdentifier: "goToErrorDetail", sender: ErrorType.unknon)
        }
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToErrorDetail" {
            let vc: ErrorVC = segue.destination as! ErrorVC
            vc.type = sender as! ErrorType
        }
    }
    

}
