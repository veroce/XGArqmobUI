//
//  ChildAboutUsVC.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class AmChildAboutUsVC: UIViewController {

    @IBOutlet weak var lbInfo: UILabel!
    var infoItem: AmAboutInfo?
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStyle()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
    }
    private func loadStyle() {
        lbInfo.font = AmAboutUsShared.shared.customStyle.infoFont
    }
    func loadData(){
        if let info = infoItem {
            lbInfo.text = info.text
        }
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
