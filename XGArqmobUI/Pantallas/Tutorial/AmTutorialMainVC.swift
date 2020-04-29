//
//  TutorialMainVC.swift
//  demoAr
//
//  Created by Vero on 25/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit

public class AmTutorialMainVC: UIViewController {
    
    @IBOutlet private weak var pageControl: UIPageControl!
    @IBOutlet private weak var containerView: UIView!
    
    private var pagerController: AmTutorialPageController?
    open var items: Array<AmTutorialItem>?
    @IBOutlet private weak var lbError: UILabel!
    
    open var style = AmTutorialStyle() {
        didSet {
            loadStyle()
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadStyle()
    }
    
    private func loadData() {
        configurePager()
    }
    
    private func loadStyle() {
        pageControl.currentPageIndicatorTintColor = style.currentPageColor
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    
    private func configurePager() {
        if let items = self.items {
            pagerController?.items = items
            pagerController?.loadPager()
            pagerController?.delegatePager = self
            pagerController?.style = style
            pageControl.numberOfPages = items.count
        }else{
            lbError.isHidden = false
            pageControl.numberOfPages = 1
        }
    }
    
    @IBAction func btnClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        if segue.identifier == "embedSegueTutorial" {
            self.pagerController = segue.destination as? AmTutorialPageController
            loadData()

        }
     }
     
    
}
extension AmTutorialMainVC: AmTutorialPagerControllerDelegate {
    public func changePage(page: Int) {
        pageControl.currentPage = page
    }
    
    public func actionButton(action: AmButtonAction) {
        switch action {
        case .NEXT:
            pagerController?.moveToViewController(index: pageControl.currentPage + 1)
            break
        default:
             dismiss(animated: true, completion: nil)
            break
        }
    }
    
    
}
