//
//  InputsVC.swift
//  demoAr
//
//  Created by Vero on 06/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class InputsVC: UIViewController {
    
    @IBOutlet weak var textFieldWithLabelGray: AmFormWithLabel!
    @IBOutlet weak var textFieldWithLabelTransparente: AmFormWithLabel!
    @IBOutlet weak var iconTextField: AnimatedField!
    @IBOutlet weak var defaultTextField: AnimatedField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        title = "Inputs"

        // Do any additional setup after loading the view.
        configureTextFieldTransparente()
        configureTextFieldGray()
        configureImageTextField()
        configureDefaultTextField()
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func configureImageTextField() {
        let format = AnimatedFieldFormat()
       
        format.alertFieldActive = false
        format.titleAlwaysVisible = false
        format.counterEnabled = false
        format.leftImage = UIImage(named: "ic_informacion")

        iconTextField.format = format
        iconTextField.dataSource = self
        iconTextField.placeholder = "Formulario con icono"
    }
    
    func configureDefaultTextField() {
        let format = AnimatedFieldFormat()
    
        format.alertFieldActive = false
        format.titleAlwaysVisible = false
        format.counterEnabled = false
        format.visibleLeftImage = false
        defaultTextField.placeholder = "Formulario sin icono"
        
        defaultTextField.dataSource = self
        defaultTextField.format = format
    }
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    func configureTextFieldGray() {
        let format = DefaultFieldFormat()
        format.backgroundColor =  UIColor(named: "textFieldBackgroundColor") ?? UIColor.blue
        textFieldWithLabelGray.labeltitle = "Label"
        textFieldWithLabelGray.placeholder = "Formulario fondo gris"
        textFieldWithLabelGray.format = format
        
    }
    func configureTextFieldTransparente() {
        var format = DefaultFieldFormat()
        format.backgroundColor = .clear
        textFieldWithLabelTransparente.labeltitle = "Label"
        textFieldWithLabelTransparente.placeholder = "Formulario fondo transparente"
         textFieldWithLabelGray.format = format
    }
    @IBAction func btnCleanTouch(_ sender: Any) {
        textFieldWithLabelTransparente.hideError()
        textFieldWithLabelGray.hideError()
        defaultTextField.hideError()
        iconTextField.hideError()
    }
    
    @IBAction func btnShowError(_ sender: Any) {
        textFieldWithLabelTransparente.showError("Campo requerido")
        textFieldWithLabelGray.showError("Campo requerido")
        defaultTextField.showAlert("Campo requerido")
        iconTextField.showAlert("Campo requerido")
    }
}
extension InputsVC: AnimatedFieldDataSource {
    func animatedFieldShouldReturn(_ animatedField: AnimatedField) -> Bool {
        let _ = animatedField.resignFirstResponder()
           return true
       }
}
