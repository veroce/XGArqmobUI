//
//  BotonesOutlineVC.swift
//  demoAr
//
//  Created by Vero on 01/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class BotonesOutlineVC: UIViewController {

    @IBOutlet weak var btnOutline: AmOutlineButton!
    @IBOutlet weak var btnOutlineLoading: AmOutlineButton!
    @IBOutlet weak var btnOutlineGray: AmOutlineGrayButton!
    @IBOutlet weak var btnOutlineGrayLoading: AmOutlineGrayButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Botones"

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        btnOutlineLoading.isLoading = true
        btnOutlineGrayLoading.isLoading = true
    }
    
    func loadStyle() {
        
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
