//
//  IconosVC.swift
//  demoAr
//
//  Created by Vero on 27/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class IconosVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGoUnDraw(_ sender: Any) {
        if let url = URL(string: "https://undraw.co/illustrations") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func btnGoIcons(_ sender: Any) {
        if let url = URL(string: "https://feathericons.com") {
            UIApplication.shared.open(url)
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
