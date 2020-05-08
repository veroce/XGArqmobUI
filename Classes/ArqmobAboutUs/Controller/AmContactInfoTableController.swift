//
//  ContactInfoTableController.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class AmContactInfoTableController: NSObject {
        var contact = [AmContactInfo]()
}

extension AmContactInfoTableController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CellInfo = tableView.dequeueReusableCell(withIdentifier: "CellInfo", for: indexPath) as! CellInfo
        let item = contact[indexPath.row]
        cell.loadData(info: item)
        return cell
    }
}
