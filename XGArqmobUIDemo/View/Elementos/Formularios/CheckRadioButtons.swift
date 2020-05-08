//
//  CheckRadioButtons.swift
//  demoAr
//
//  Created by Vero on 30/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class CheckRadioButtons: UIViewController {
    
    @IBOutlet weak var checkbox2: Checkbox!
    @IBOutlet weak var checkbox1: Checkbox!
    @IBOutlet weak var checkbox3: Checkbox!

    @IBOutlet weak var radioButton1: RadioButton!
    @IBOutlet weak var radioButton2: RadioButton!
    @IBOutlet weak var radioButton3: RadioButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        loadStyle()
        self.title = "Radio & check buttons"
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
    }
    
    func loadStyle() {
        radioButton1.setDiselect()
        radioButton2.setDiselect()
        radioButton3.setDisable()
        radioButton3.setDiselect()
        radioButton1.lbTitle.text = "Opción 1"
        radioButton2.lbTitle.text = "Opción 2"
        radioButton3.lbTitle.text = "Opción 3"
        radioButton2.delegate = self
        radioButton1.delegate = self
        checkbox1.setDiselect()
        checkbox2.setDiselect()
        checkbox3.setDisabled()

        checkbox1.lbtitle.text = "Opción 1"
        checkbox2.lbtitle.text = "Opción 2"
        checkbox3.lbtitle.text = "Opción 3"
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
extension CheckRadioButtons: RadioButtonDelegate {
    // MARK: - RadioButtonDelegate
    
    func optionSelected(sender: RadioButton) {
        if sender == self.radioButton2 {
            self.radioButton1.setDiselect()
        }
        if sender == self.radioButton1 {
            self.radioButton2.setDiselect()
        }
    }
}
