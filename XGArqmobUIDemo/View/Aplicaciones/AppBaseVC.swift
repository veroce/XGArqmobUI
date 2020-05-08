//
//  AppBaseVC.swift
//  demoAr
//
//  Created by Vero on 23/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class AppBaseVC: UIViewController {
    
    @IBOutlet weak var viewPrimaryColor: UIView!
    @IBOutlet weak var viewsecondaryColor: UIView!
    @IBOutlet weak var viewTertiaryColor: UIView!
    @IBOutlet weak var viewQuarteryColor: UIView!
    
    @IBOutlet weak var lbHexPrimary: UILabel!
    @IBOutlet weak var lbHexSecondary: UILabel!
    @IBOutlet weak var lbHexTertiary: UILabel!
    @IBOutlet weak var lbHexQuarterly: UILabel!
    
    @IBOutlet weak var lbRgbPrimary: UILabel!
    @IBOutlet weak var lbRgbSecondary: UILabel!
    @IBOutlet weak var lbRgbTertiary: UILabel!
    @IBOutlet weak var lbRgbQuarterly: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        // Do any additional setup after loading the view.
        loadStyle()
        loadData()
        if let targetName = Bundle.main.infoDictionary?["CFBundleName"] as? String {
            title = targetName
        }
        
        
    }
    
    func loadData() {
        lbHexPrimary.text = UIColor(named: "primaryColor")?.toHexString().uppercased()
        lbHexSecondary.text = UIColor(named: "secondaryColor")?.toHexString().uppercased()
        lbHexTertiary.text = UIColor(named: "tertiaryColor")?.toHexString().uppercased()
        lbHexQuarterly.text = UIColor(named: "quarteryColor")?.toHexString().uppercased()
        
        lbRgbPrimary.text = UIColor(named: "primaryColor")?.toRGBAString()
        lbRgbSecondary.text = UIColor(named: "secondaryColor")?.toRGBAString()
        lbRgbTertiary.text = UIColor(named: "tertiaryColor")?.toRGBAString()
        lbRgbQuarterly.text = UIColor(named: "quarteryColor")?.toRGBAString()
    }
    func loadStyle() {
        viewPrimaryColor.layer.cornerRadius = 5.0
        viewsecondaryColor.layer.cornerRadius = 5.0
        viewTertiaryColor.layer.cornerRadius = 5.0
        viewQuarteryColor.layer.cornerRadius = 5.0
        
    }
    
    @IBAction func btnMenuTouch(_ sender: Any) {
        sideMenuController?.showLeftView(animated: true, completionHandler: nil)
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
