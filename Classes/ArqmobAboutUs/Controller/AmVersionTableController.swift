//
//  VersionTableController.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class AmVersionTableController: NSObject {
    var versions = [AmVersionInfo]()
}
extension AmVersionTableController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
extension AmVersionTableController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return versions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CellVersion = tableView.dequeueReusableCell(withIdentifier: "CellVersion", for: indexPath) as! CellVersion
        let item = versions[indexPath.row]
        cell.loadData(info: item)
        return cell
    }
}
