//
//  ChildContactVC.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
protocol AmChildContactDelegate {
    func contactItemSelected(contact: AmContactInfo)
}
class AmChildContactVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var tableController = AmContactInfoTableController()
    var contactItems = [AmContactInfo]()
    var delegate: AmChildContactDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
    }
    
    private func loadData(){
        let bundle = Bundle(for: AmChildContactVC.self)
        tableView.register(UINib(nibName: "CellInfo", bundle: bundle), forCellReuseIdentifier: "CellInfo")
        tableView.dataSource = tableController
        tableView.delegate = tableController
        tableView.rowHeight = 44.0
        tableController.contact = contactItems
        tableController.delegate = self
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
extension AmChildContactVC: AmContactInfoDelegate {
    func itemSelected() {
        if let index = tableView.indexPathForSelectedRow?.row {
            guard let delegate = self.delegate else {
                return
            }
            delegate.contactItemSelected(contact: contactItems[index])
        }
    }
    
    
}
