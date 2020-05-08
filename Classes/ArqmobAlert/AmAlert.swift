//
//  AmAlert.swift
//  arqmob-ui
//
//  Created by Vero on 13/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

open class AmAlert: UIViewController {
    @IBOutlet weak var viewAlert: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbBody: UILabel!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnAction: UIButton!
    @IBOutlet weak var contraintHeightLine: NSLayoutConstraint!
    @IBOutlet weak var constraintWidthLine: NSLayoutConstraint!
    
    private var titleValue: String?
    private var bodyValue: String?
    private var titleAction: String?
    private var imageString: String?
    
    var handler: ((UIButton) -> Void)?
    
   public var style = AmAlertStyle() {
           didSet {
           loadStyle()
           }
       }
    
    public func loadTitle(_ title: String, message: String, image: String){
        titleValue = title
        bodyValue = message
        imageString = image
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadStyle()
        loadData()
    }
    private func loadData() {
        lbBody.text = bodyValue
        lbTitle.text = titleValue
        btnAction.setTitle(titleAction, for: .normal)
        if let imageString = imageString {
            if let image = UIImage(named: imageString) {
                imageView.image = image
            }else{
                
            }
        }
        btnCancel.setTitle(NSLocalizedString("Cancelar", comment: ""), for: .normal)
        
    }
    private func loadStyle() {
        constraintWidthLine.constant = 0.5
        contraintHeightLine.constant = 0.5
        viewAlert.layer.cornerRadius = 14
        lbTitle.font = style.titleFont
           lbBody.font = style.messageFont
           btnAction.titleLabel?.font = style.actionButtonFont
           btnCancel.titleLabel?.font = style.cancelButtonFont
           btnAction.tintColor = style.actionButtonColor
           btnCancel.tintColor = style.cancelButtonColor
           imageView.backgroundColor = style.backgroundColor
    }
    
    public func addAction(title: String, handler: ((UIButton) -> Void)? = nil) {
        titleAction = title
        self.handler = handler
    }
    
    @IBAction func btnCancelTouch(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnActionTouch(_ sender: Any) {
        handler?(btnAction)
        
    }
    
}
