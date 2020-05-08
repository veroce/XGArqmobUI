//
//  CellMenu.swift
//  demoAr
//
//  Created by Vero on 17/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class CellMenu: UITableViewCell {
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var viewSelector: UIView!
    @IBOutlet weak var lbtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewSelector.layer.cornerRadius = 2.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func loadData(data: MenuItem, selected: Bool){
        imgIcon.image = UIImage(named: data.icon)
        lbtitle.text = data.title
        if selected {
            lbtitle.textColor = UIColor(named: "primaryColor")
            imgIcon.tintColor = UIColor(named: "primaryColor")
        }else{
            
            lbtitle.textColor = UIColor(named: "secondaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
            imgIcon.tintColor = UIColor(named: "secondaryTextColor", in: Bundle(for: ArmobTheme.self), compatibleWith: nil)
        }
        viewSelector.isHidden = !selected
        
    }
}
