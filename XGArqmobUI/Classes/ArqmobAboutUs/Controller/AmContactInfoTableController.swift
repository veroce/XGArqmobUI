//
//  ContactInfoTableController.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
protocol AmContactInfoDelegate {
    func itemSelected()
}
class AmContactInfoTableController: NSObject {
    var contact = [AmContactInfo]()
    var delegate: AmContactInfoDelegate?
}

extension AmContactInfoTableController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CellInfo = tableView.dequeueReusableCell(withIdentifier: "CellInfo", for: indexPath) as! CellInfo
        let item = contact[indexPath.row]
        cell.loadData(info: item)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let delegate = self.delegate else{
            return
        }
        
        delegate.itemSelected()
    }
}
