//
//  BotonesGrisVC.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class BotonesGrisVC: UIViewController {
    

    @IBOutlet weak var btnGris: AmDefaultGrayButton!
    @IBOutlet weak var btnGrisLoading: AmDefaultGrayButton!
    @IBOutlet weak var btnGrisText: AmTextGrayButton!
    @IBOutlet weak var btnGrisTextoLoading: AmTextGrayButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Botones"

        // Do any additional setup after loading the view.
        btnGrisLoading.isLoading = true
        btnGrisTextoLoading.showLoading()
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
