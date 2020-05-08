//
//  AppComunVC.swift
//  demoAr
//
//  Created by Vero on 23/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class AppComunVC: UIViewController {
    
    @IBOutlet weak var textSecondaryColorView: UIView!
    @IBOutlet weak var textPrimaryColorView: UIView!
    @IBOutlet weak var textTerciaryColorView: UIView!
    @IBOutlet weak var textQuarterltColorView: UIView!
    @IBOutlet weak var elevationSecondaryColorView: UIView!
    @IBOutlet weak var elevationPrimaryColorView: UIView!
    @IBOutlet weak var elevationTerciaryColorView: UIView!
    
    @IBOutlet weak var lbHexPrimary: UILabel!
    @IBOutlet weak var lbHexSecondary: UILabel!
    @IBOutlet weak var lbHexTertiary: UILabel!
    @IBOutlet weak var lbHexQuarterly: UILabel!
    
    @IBOutlet weak var lbRgbPrimary: UILabel!
    @IBOutlet weak var lbRgbSecondary: UILabel!
    @IBOutlet weak var lbRgbTertiary: UILabel!
    @IBOutlet weak var lbRgbQuarterly: UILabel!
    
    @IBOutlet weak var lbHexElevationPrimary: UILabel!
    @IBOutlet weak var lbHexElevationSecondary: UILabel!
    @IBOutlet weak var lbHexElevationTertiary: UILabel!
    
    @IBOutlet weak var lbRgbElevationPrimary: UILabel!
    @IBOutlet weak var lbRgbElevationSecondary: UILabel!
    @IBOutlet weak var lbRgbElevationTertiary: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        loadStyle()
        // Do any additional setup after loading the view.
        loadData()
        
    }
    
    func loadData() {
        if let targetName = Bundle.main.infoDictionary?["CFBundleName"] as? String {
            title = targetName
        }
        let bundle = Bundle(for: ArmobTheme.self)
        lbHexPrimary.text = UIColor(named: "primaryTextColor", in: bundle, compatibleWith: nil)?.toHexString().uppercased()
        lbHexSecondary.text = UIColor(named: "secondaryTextColor", in: bundle, compatibleWith: nil)?.toHexString().uppercased()
        lbHexTertiary.text = UIColor(named: "tertiaryTextColor", in: bundle, compatibleWith: nil)?.toHexString().uppercased()
        lbHexQuarterly.text = UIColor(named: "quarterlyTextColor", in: bundle, compatibleWith: nil)?.toHexString().uppercased()
        
        lbRgbPrimary.text = UIColor(named: "primaryTextColor", in: bundle, compatibleWith: nil)?.toRGBAString()
        lbRgbSecondary.text = UIColor(named: "secondaryTextColor", in: bundle, compatibleWith: nil)?.toRGBAString()
        lbRgbTertiary.text = UIColor(named: "tertiaryTextColor", in: bundle, compatibleWith: nil)?.toRGBAString()
        lbRgbQuarterly.text = UIColor(named: "quarterlyTextColor", in: bundle, compatibleWith: nil)?.toRGBAString()
        
        
        lbHexElevationPrimary.text = UIColor(named: "primaryElevationColor", in: bundle, compatibleWith: nil)?.toHexString().uppercased()
        lbHexElevationSecondary.text = UIColor(named: "secondaryElevationColor", in: bundle, compatibleWith: nil)?.toHexString().uppercased()
        lbHexElevationTertiary.text = UIColor(named: "tertiaryElevationColor", in: bundle, compatibleWith: nil)?.toHexString().uppercased()
        
        lbRgbElevationPrimary.text = UIColor(named: "primaryElevationColor", in: bundle, compatibleWith: nil)?.toRGBAString()
        lbRgbElevationSecondary.text = UIColor(named: "primaryElevationColor", in: bundle, compatibleWith: nil)?.toRGBAString()
        lbRgbElevationTertiary.text = UIColor(named: "tertiaryElevationColor", in: bundle, compatibleWith: nil)?.toRGBAString()
    }
    
    func loadStyle() {
        textPrimaryColorView.layer.cornerRadius = 5.0
        textSecondaryColorView.layer.cornerRadius = 5.0
        textTerciaryColorView.layer.cornerRadius = 5.0
        textQuarterltColorView.layer.cornerRadius = 5.0
        
        elevationPrimaryColorView.layer.cornerRadius = 5.0
        elevationPrimaryColorView.layer.borderWidth = 1.0
        elevationPrimaryColorView.layer.borderColor = UIColor(named: "primaryTextColor")?.cgColor
        elevationSecondaryColorView.layer.cornerRadius = 5.0
        elevationTerciaryColorView.layer.cornerRadius = 5.0
        
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
