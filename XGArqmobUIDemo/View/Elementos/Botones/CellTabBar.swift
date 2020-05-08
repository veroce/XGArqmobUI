//
//  CellTabBar.swift
//  demoAr
//
//  Created by Vero on 06/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
protocol CellTabBarDelegate {
    func switchChangeValue(enable: Bool)
}

class CellTabBar: UITableViewCell {
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var switchState: UISwitch!
    
    var delegate: CellTabBarDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadData(title: String){
        lbTitle.text = title
    }
    
    @IBAction func SwitchValueChanged(_ sender: Any) {
        guard let delegate = self.delegate else {
            return
        }
        
        delegate.switchChangeValue(enable: switchState.isOn)
    }

}
