//
//  ErrorVC.swift
//  demoAr
//
//  Created by Vero on 25/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobUI
enum ErrorType: Int {
    
    case notFound = 0
    case emptyData = 1
    case unknon = 2
    case connectionError = 3
}

class ErrorVC: UIViewController {
    
    var type: ErrorType = .notFound
    @IBOutlet weak var errorView: AmErrorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
    
        // Do any additional setup after loading the view.
        loadData()
    }
    
    func loadData() {
        switch type {
        case .unknon:
            errorView.showErrorUnknownWithTitle("Error desconocido", message: "Lo sentimos. Parece que tenemos problemas con la petición. Por favor, vuelve a intentarlo más tarde. Si el problema persiste, ponte en contacto con el servicio de la aplicación")
            errorView.delegate = self
            break
        case .emptyData:
            errorView.showEmptyDataWithTitle("Sin resultados")
            break
        case .connectionError:
             errorView.showErrorConnectionWithTitle("Error de conexión", message: "Parece que hay un problema con la conexión. Por favor, comprueba que tienes tus datos activados o estás conectado a una red e inténtalo de nuevo")
             errorView.delegate = self
            break
        default:
             errorView.showErrorNotFoundWithTitle("Página no encontrada", message: "Parece que hay un problema con la solicitud. Por favor, inténtalo más tarde y si el problema persiste ponte en contacto con el servicio de la aplicación")
            errorView.delegate = self
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
extension ErrorVC: AmErrorViewDelegate{
    func buttonTouch() {
        view.makeToast("Botón seleccionado")
    }
    
    
}
