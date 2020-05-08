//
//  MenuController.swift
//  demoAr
//
//  Created by Vero on 17/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import LGSideMenuController
import XGArqmobUI
class MenuController: LGSideMenuController {
    
    var mainMenu: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupHomeView()
    }
    
    func setupHomeView(){
        /*  let sb = UIStoryboard(name: "Aplicaciones", bundle: nil)
         if let viewController = sb.instantiateInitialViewController() {
         if  let rootViewController: UINavigationController = self.rootViewController as? UINavigationController {
         rootViewController.addChild(viewController)
         }
         }*/
        (leftViewController as? MenuVC)?.delegate = self
        
        let value = UserDefaults.standard.bool(forKey: "isNotFirstTime")
        if value == false {
            UserDefaults.standard.setValue(true, forKey: "isNotFirstTime")
            UserDefaults.standard.synchronize()
            
            showTutorial()
        }
    }
    
    
    func showTutorial() {
        let page1 = AmTutorialItem(image: "page1", title: "¡Bienvenidos!", body: "¡Hola! Estás a punto de entrar en el Manual de estilos para las Aplicaciones de Turismo de Galicia")
        let page2 = AmTutorialItem(image: "page2", title: "Selecciona los colores", body: "Desde la pantalla de Ajustes podrás cambiar la visualización de la aplicación para ver como quedan los distintos modos que se ofrecen")
        let page3 = AmTutorialItem(image: "page3", title: "Ahorra tiempo", body: "A través de este manual podrás ver como quedan los elementos antes de implementarlos así como consultar para comprobar cual debe de emplearse")
        
         let bundle = Bundle(for: AmTutorialMainVC.self)
        let sb = UIStoryboard(name: "AmTutorial", bundle: bundle)
        if let nc = sb.instantiateInitialViewController() {
            if let vc: AmTutorialMainVC = nc.children.first as? AmTutorialMainVC {
                vc.items = [page1, page2, page3]
            }
            nc.modalPresentationStyle = .fullScreen
            rootViewController?.present(nc, animated: true, completion: nil)
            
        }
    }
    
    
}

extension MenuController: MenuDelegate {
    func menuSelected(vcIdentifier: String) {
        switch vcIdentifier {
        case "kMapa":
            let sb = UIStoryboard(name: "Mapa", bundle: nil)
            if let viewController = sb.instantiateInitialViewController() {
                rootViewController = viewController
            }
            sideMenuController?.hideLeftView(animated: true, completionHandler: nil)
            break
        case "kAplicacion":
            let sb = UIStoryboard(name: "Aplicaciones", bundle: nil)
            if let viewController = sb.instantiateInitialViewController() {
                rootViewController = viewController
            }
            sideMenuController?.hideLeftView(animated: true, completionHandler: nil)
            break
        case "kElementos":
            let sb = UIStoryboard(name: "Elementos", bundle: nil)
            if let viewController = sb.instantiateInitialViewController() {
                rootViewController = viewController
            }
            sideMenuController?.hideLeftView(animated: true, completionHandler: nil)
            break
        case "kPantallas":
            let sb = UIStoryboard(name: "Pantallas", bundle: nil)
            if let viewController = sb.instantiateInitialViewController() {
                rootViewController = viewController
            }
            sideMenuController?.hideLeftView(animated: true, completionHandler: nil)
        case "kInfoApp":
            let sb = UIStoryboard(name: "AcercaDe", bundle: nil)
            if let viewController = sb.instantiateInitialViewController() {
                rootViewController = viewController
            }
            sideMenuController?.hideLeftView(animated: true, completionHandler: nil)
            break
        case "kAjustes":
            let sb = UIStoryboard(name: "Ajustes", bundle: nil)
            if let viewController = sb.instantiateInitialViewController() {
                rootViewController = viewController
            }
            sideMenuController?.hideLeftView(animated: true, completionHandler: nil)
            break
        default:
            let sb = UIStoryboard(name: "Aplicaciones", bundle: nil)
            if let viewController = sb.instantiateInitialViewController() {
                rootViewController = viewController
            }
            sideMenuController?.hideLeftView(animated: true, completionHandler: nil)
        }
        
        
        
        
        
    }
    
    
}
