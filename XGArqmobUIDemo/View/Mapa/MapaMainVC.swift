//
//  MapaMainVC.swift
//  demoAr
//
//  Created by Vero on 23/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

class MapaMainVC: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var containerViewTop: NSLayoutConstraint!
    
    var listVC: ListadoVC?
    var mapVC: MapaVC?
    var tabSelected: Int = 0
    
    private var activeViewController: UIViewController?{
        didSet {
            removeInactiveViewController(inactiveViewController: oldValue)
            updateActiveViewController()
        }
    }
    
    
    enum TabIndicatorViewPosition{
        case list, map
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        // Do any additional setup after loading the view.
    }
    
    func configureViewController() {
        let storyboard = UIStoryboard(name: "Mapa", bundle: nil)
        self.listVC =  storyboard.instantiateViewController(withIdentifier: "ListadoVC") as? ListadoVC
        self.mapVC = storyboard.instantiateViewController(withIdentifier: "MapaVC") as? MapaVC
        activeViewController = self.listVC
    }
    // change value segment
    @IBAction func segmentedChangeValue(_ sender: Any) {
        let tab = (sender as! UISegmentedControl).selectedSegmentIndex
        self.tabSelected = tab
        // si el tab es 1 mostramos el mapa, si el tab es 0 mostramos el listado
        if tab == 1 {
            activeViewController = self.mapVC
        }else if tab == 0 {
            activeViewController = self.listVC
        }
        
        
    }
    
    private func removeInactiveViewController(inactiveViewController: UIViewController?) {
        if let inactiveVC = inactiveViewController {
            //1. Avisamos al child view controller que vamos a eliminarlo de su content
            inactiveVC.willMove(toParent: nil)
            //2. Eliminamos la view del child view controller de la jerarquía de vistas del content
            inactiveVC.view.removeFromSuperview()
            //3. Finalizamos la relación entre el content y el child view controller
            inactiveVC.removeFromParent()
        }
    }
    private func updateActiveViewController() {
        if let activeVC = activeViewController {
            //1. Comenzamos la relación entre el content y el child view controller
            addChild(activeVC)
            //2. Establecemos el tamaño y posición del child view controller
            activeVC.view.frame = containerView.bounds
            //3. Añadimos la animación
            let transition = CATransition()
            transition.type = CATransitionType.push
            if tabSelected == 0 {
                transition.subtype = CATransitionSubtype.fromLeft
            } else {
                transition.subtype = CATransitionSubtype.fromRight
            }
            containerView.layer.add(transition, forKey: nil)
            //4. Añadimos la view del child view controller a la jerarquía de vistas del content
            containerView.addSubview(activeVC.view)
            self.containerView.bringSubviewToFront(self.segmentedControl)
            //5. Avisamos al child view controller que hemos realizado el cambio
            activeVC.didMove(toParent: self)
        }
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
