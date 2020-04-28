//
//  ChildContactVC.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class AmChildContactVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var tableController = AmContactInfoTableController()
    var contactItems = [AmContactInfo]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
    }
    
    private func loadData(){
        tableView.register(UINib(nibName: "CellInfo", bundle: nil), forCellReuseIdentifier: "CellInfo")
        tableView.dataSource = tableController
        tableView.rowHeight = 44.0
        tableController.contact = contactItems
        tableView.reloadData()
        
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
