//
//  AcercaDeVC.swift
//  demoAr
//
//  Created by Vero on 03/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
class AcercaDeVC: UIViewController {
    @IBOutlet weak var containerView: UIView!
    var mainView: AmAboutUsMainVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        configureViewController()
        // Do any additional setup after loading the view.
    }
    private var activeViewController: UIViewController?{
        didSet {
            updateActiveViewController()
        }
    }
    func configureViewController() {
         let bundle = Bundle(for: AmAboutUsMainVC.self)
        let storyboard = UIStoryboard(name: "AmAboutUs", bundle: bundle)
        self.mainView =  storyboard.instantiateViewController(withIdentifier: "AmAboutUsMainVC") as? AmAboutUsMainVC
        // Acerca de
        let aboutUsInfo = AmAboutInfo(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas varius tortor nibh, sit amet tempor nibh finibus et. Aenean eu enim justo. Vestibulum aliquam hendrerit molestie. Mauris malesuada nisi sit amet augue accumsan tincidunt. Maecenas tincidunt, velit ac porttitor pulvinar, tortor eros facilisis libero, vitae commodo nunc quam et ligula. Ut nec ipsum sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer id nisi nec nulla luctus lacinia non eu turpis. Etiam in ex imperdiet justo tincidunt egestas. Ut porttitor urna ac augue cursus tincidunt sit amet sed orci.")
        // Contacto
        let contactPhone = AmContactInfo(icon: "ic_phone", info: "(+34) 981 888 888")
        let contactMail = AmContactInfo(icon: "ic_email", info: "info@email.com")
        let itemsContact = [contactPhone, contactMail]
        
        // Versiones
        let version = AmVersionInfo(version: "versión 1.0.0", versionInfo: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas varius tortor nibh, sit amet tempor nibh finibus et. Aenean eu enim justo. Vestibulum aliquam hendrerit molestie. ")
        
        let itemsVersion = [version]
        
        self.mainView?.setAboutUs(aboutUsInfo, contactInfo: itemsContact, versionInfo: itemsVersion)
        
        self.mainView?.setTitleTab1("Acerca de", titleTab2: "Contacto", titleTab3: "Versiones")
        activeViewController = self.mainView
        
        
        
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
    private func updateActiveViewController() {
        if let activeVC = activeViewController {
            //1. Comenzamos la relación entre el content y el child view controller
            addChild(activeVC)
            //2. Establecemos el tamaño y posición del child view controller
            activeVC.view.frame = containerView.bounds
            //4. Añadimos la view del child view controller a la jerarquía de vistas del content
            containerView.addSubview(activeVC.view)
            //5. Avisamos al child view controller que hemos realizado el cambio
            activeVC.didMove(toParent: self)
        }
    }
}
