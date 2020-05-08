//
//  ViewController.swift
//  XGArqmobUIDemo
//
//  Created by Vero on 07/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

import UIKit
import XGArqmobUI
class ViewController: UIViewController {

    @IBOutlet weak var cardMap: AmCardMap!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadCardView()
    }

    
    func loadCardView() {
    }

}

