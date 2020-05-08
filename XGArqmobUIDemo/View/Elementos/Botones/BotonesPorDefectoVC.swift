//
//  BotonesPorDefectoVC.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class BotonesPorDefectoVC: UIViewController {
    
    @IBOutlet weak var btnDefault: AmDefaultButton!
    @IBOutlet weak var btnDefaultLoading: AmDefaultButton!
    @IBOutlet weak var btnTextButton: AmTextButton!
    @IBOutlet weak var btnTextButtonLoading: AmTextButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Botones"
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        btnDefaultLoading.isLoading = true
        btnTextButtonLoading.showLoading()
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
