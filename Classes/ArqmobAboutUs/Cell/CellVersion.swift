//
//  CellVersion.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class CellVersion: UITableViewCell {

    @IBOutlet weak var lbVersionTitle: UILabel!
    @IBOutlet weak var lbVersionBody: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        loadStyle()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func loadStyle() {
        lbVersionBody.font = AmAboutUsShared.shared.customStyle.infoFont
        lbVersionTitle.font = AmAboutUsShared.shared.customStyle.versionFont
    }
    
    func loadData(info: AmVersionInfo) {
        lbVersionTitle.text = info.version
        lbVersionBody.text = info.versionInfo
        
    }
    
}
