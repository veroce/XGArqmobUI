//
//  LoginWithImageVC.swift
//  demoAr
//
//  Created by Vero on 07/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class LoginWithImageVC: UIViewController {
    
    @IBOutlet weak var txUser: AnimatedField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var txPassword: AnimatedField!
    @IBOutlet weak var btnForgotPassword: AmTextButton!
    @IBOutlet weak var btnEntrar: AmDefaultButton!
    @IBOutlet weak var lbNoAccount: UILabel!
    @IBOutlet weak var btnRegistro: AmOutlineButton!
    @IBOutlet weak var lbBienvenido: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(LoginWithOutImageVC.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(LoginWithOutImageVC.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        configureTextFields()
        lbNoAccount.textColor = UIColor(named: "secondaryTextColor")
        lbNoAccount.font = UIFont.subheadlineRegular()
        lbBienvenido.font = UIFont.largeTitleBold()
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        
    }
    func configureTextFields () {
        var format = AnimatedFieldFormat()
        format.alertFieldActive = false
        format.titleAlwaysVisible = false
        format.counterEnabled = false
        format.leftImage = UIImage(named: "mail")
        format.leftIconColor = UIColor(named: "primaryTextColor")
        
        txUser.format = format
        txUser.placeholder = "Introduce tu usuario"
        txUser.keyboardType = .emailAddress
        txUser.dataSource = self
        
        var formatPassword = AnimatedFieldFormat()
        formatPassword.alertFieldActive = false
        formatPassword.titleAlwaysVisible = false
        formatPassword.counterEnabled = false
        formatPassword.leftImage = UIImage(named: "password")
        formatPassword.leftIconColor = UIColor(named: "primaryTextColor")
        
        txPassword.format = formatPassword
        txPassword.placeholder = "Introduce tu contraseña"
        txPassword.isSecure = true
        txPassword.dataSource = self
    }
    //MARK: - Keyboard observers
    @objc func keyboardWillShow(notification: NSNotification) {
        guard let userInfo = notification.userInfo else {return }
        guard let keyboardSize = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
        
        let keyboardFrame = keyboardSize.cgRectValue
        let kbSize = keyboardFrame.size
        
        let contentInsents = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        scrollView.contentInset = contentInsents
        scrollView.scrollIndicatorInsets = contentInsents
        
        // If active text field is hidden by keyboard, scroll it so it's visible
        // Your app might not need or want this behavior.
        let activeField: UITextField? = [txUser.textField, txPassword.textField].first { $0.isFirstResponder }
        
        if let activeField = activeField {
            var aRect = view.frame
            aRect.size.height -= kbSize.height
            
            if !aRect.contains(activeField.frame.origin) {
                self.scrollView.scrollRectToVisible(activeField.frame, animated: true)
                var contentInset:UIEdgeInsets = self.scrollView.contentInset
                contentInset.bottom = keyboardFrame.size.height + 100
                self.scrollView.contentInset = contentInset
            }
        }
        
        
    }
    @IBAction func dismissKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func btnCloseTouch(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @objc func keyboardWillHide(notification: NSNotification) {
        scrollView.contentInset = UIEdgeInsets.zero
        scrollView.scrollIndicatorInsets = .zero
        
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
extension LoginWithImageVC: AnimatedFieldDataSource {
    func animatedFieldShouldReturn(_ animatedField: AnimatedField) -> Bool {
        if animatedField == txUser {
            let _ = txPassword.becomeFirstResponder()
        }else{
            let _ = animatedField.resignFirstResponder()
            
        }
        return true
    }
}
