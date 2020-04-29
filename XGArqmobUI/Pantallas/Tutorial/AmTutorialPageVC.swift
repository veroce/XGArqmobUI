//
//  TutorialPageVC.swift
//  demoAr
//
//  Created by Vero on 25/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
public enum AmButtonAction: Int {
    case NEXT = 0
    case FINISH = 1
}

protocol AmTutorialPageDelegate {
    func actionButton(action: AmButtonAction)
}

class AmTutorialPageVC: UIViewController {
    
    @IBOutlet weak var imgPage: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbBody: UILabel!
    @IBOutlet weak var btnNext: AmDefaultButton!
    
    var itemPage: AmTutorialItem?
    var index = 0
    var lastPage = false
    var action: AmButtonAction = .NEXT
    var delegate: AmTutorialPageDelegate?
    
    var style = AmTutorialStyle() 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
        loadStyle()

    }
    
    private func loadStyle() {
        lbTitle.font = style.titleFont
        lbBody.font = style.messageFont
        lbTitle.textColor = style.titleColor
        lbBody.textColor = style.messageColor
        
        if let fontButton = style.buttonFont {
            btnNext.titleLabel?.font = fontButton
        }
        if let backgroundColorButtton = style.buttonBackgroundColor {
            btnNext.backgroundColor = backgroundColorButtton
        }
        
        view.backgroundColor = style.backgroundColor
    }
    
    func loadData() {
        
        action = lastPage ? .FINISH : .NEXT
        if let item = itemPage {
            lbTitle.text = item.title
            lbBody.text = item.body
            if let image = UIImage(named: item.image) {
                imgPage.image = image
            }else{
                imgPage.image = UIImage(named: "page1")
            }
        }
        switch action {
        case .NEXT:
            btnNext.setTitle("Siguiente", for: .normal)
        default:
            btnNext.setTitle("Finalizar", for: .normal)
        }
        
    }
    
    @IBAction func btnActionTouch(_ sender: Any) {
        guard let delegate = self.delegate else{
            return
        }
        delegate.actionButton(action: action)
        
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
