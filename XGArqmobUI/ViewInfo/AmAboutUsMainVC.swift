//
//  AboutUsMainVC.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

public class AmAboutUsMainVC: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    
    private var pageController: AmAboutUsPageController?
    var aboutUsInfo: AmAboutInfo?
    var contactInfo: Array<AmContactInfo> = []
    var versionInfo: Array<AmVersionInfo> = []
   private var titleTab1 = "_Acerca de"
   private var titleTab2 = "_Contacto"
   private var titleTab3 = "_Versiones"
    
    open var style = AmAboutUsStyle() {
        didSet {
            AmAboutUsShared.shared.customStyle = style
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        loadStyle()
        configureSegmentedControl()
        
        // Do any additional setup after loading the view.
    }
    
    private func loadStyle() {
        AmAboutUsShared.shared.customStyle = style
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.font: AmAboutUsShared.shared.customStyle.tabsTitle], for: .normal)
    }
    private func loadData() {
        segmentControl.setTitle(titleTab1, forSegmentAt: 0)
        segmentControl.setTitle(titleTab2, forSegmentAt: 1)
        segmentControl.setTitle(titleTab3, forSegmentAt: 2)
        
    }
    
    private func configureSegmentedControl() {
        
        
    }
    public func setTitleTab1( _ tab1: String, titleTab2: String, titleTab3: String){
        self.titleTab1 = tab1
        self.titleTab2 = titleTab2
        self.titleTab3 = titleTab3
    }
    public func setAboutUs(_ aboutUsInfo: AmAboutInfo, contactInfo: Array<AmContactInfo>, versionInfo: Array<AmVersionInfo>){
        self.aboutUsInfo = aboutUsInfo
        self.contactInfo = contactInfo
        self.versionInfo = versionInfo
        
    }
    
    
    private func updateActiveViewController() {
        
    }
    
    @IBAction func segmentedChangeValue(_ sender: Any) {
        pageController?.moveToViewController(index: segmentControl.selectedSegmentIndex)
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "aboutEmbedPager" {
            pageController = segue.destination as? AmAboutUsPageController
            pageController?.aboutUsInfo = aboutUsInfo
            pageController?.contactInfo = contactInfo
            pageController?.versionInfo = versionInfo
            pageController?.loadPager()
            pageController?.delegatePager = self
        }
    }
    
    
}
extension AmAboutUsMainVC: AmAboutUsPagerDelegate{
    func updateSegemeted(index: Int) {
        segmentControl.selectedSegmentIndex = index
    }
    
    
}
