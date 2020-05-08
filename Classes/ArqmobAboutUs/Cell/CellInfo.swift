//
//  CellInfo.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class CellInfo: UITableViewCell {

    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    
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
        lbTitle.font =  AmAboutUsShared.shared.customStyle.infoFont
    }
    
    func loadData(info: AmContactInfo){
        lbTitle.text = info.info
        if let icon = UIImage(named: info.icon){
            imgIcon.image = icon
        }
        
    }
    
}
