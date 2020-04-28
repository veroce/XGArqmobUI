//
//  AboutUsPageController.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
protocol AmAboutUsPagerDelegate {
    func updateSegemeted(index: Int)
}

class AmAboutUsPageController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    //  var delegatePager: TutorialPagerControllerDelegate?
    var currentPage: Int = 0
    var aboutUsInfo: AmAboutInfo?
    var contactInfo: Array<AmContactInfo> = []
    var versionInfo: Array<AmVersionInfo> = []
    var delegatePager: AmAboutUsPagerDelegate?
    private lazy var pages: [UIViewController] = {
        return [
            self.getViewController(withIdentifier: "AmChildAboutUsVC"),
            self.getViewController(withIdentifier: "AmChildContactVC"),
            self.getViewController(withIdentifier: "AmChildVersionVC")
        ]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func getViewController(withIdentifier identifier: String) -> UIViewController {
        return UIStoryboard(name: "AmAboutUs", bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    
    func loadPager(index: Int = 0){
        
        // create view controllers
        if let firstVC: AmChildAboutUsVC = pages.first as? AmChildAboutUsVC {
            firstVC.infoItem = aboutUsInfo
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
    }
    func viewControllerAtIndex(index: Int) -> UIViewController{
        self.currentPage = index
        if let vc: AmChildAboutUsVC = pages[index] as? AmChildAboutUsVC {
            vc.infoItem = aboutUsInfo
            return vc
        } else if let vc: AmChildContactVC = pages[index] as? AmChildContactVC {
            vc.contactItems = contactInfo
            return vc
        }else if let vc: AmChildVersionVC = pages[index] as? AmChildVersionVC {
            vc.items = versionInfo
            return vc
        }
        return UIViewController()
        
    }
    
    //MARK: UIPageViewControllerDelegate
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else { return nil }
        guard pages.count > previousIndex else { return nil }
        
        return viewControllerAtIndex(index: previousIndex)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
        let nextIndex = viewControllerIndex + 1
        guard nextIndex < pages.count else { return nil }
        guard pages.count > nextIndex else { return nil }
        
        return viewControllerAtIndex(index: nextIndex)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard completed else { return }
        /* if let index = (pageViewController.viewControllers?.first as? TutorialPageVC)?.index {
         guard let delegate = self.delegatePager else{
         return
         }
         delegate.changePage(page: index)
         }*/
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController]) {
        if let vc = pendingViewControllers.first {
            guard let delegatePager = self.delegatePager else {
                return
            }
            guard let viewControllerIndex = pages.firstIndex(of: vc) else { return }
            delegatePager.updateSegemeted(index: viewControllerIndex)
        }
    }
        
        func moveToViewController(index: Int){
            var direction: UIPageViewController.NavigationDirection = .reverse
            if index <= self.currentPage {
                direction = .reverse
            }else{
                direction = .forward
            }
            let vc = viewControllerAtIndex(index: index)
            setViewControllers([vc], direction: direction, animated: true, completion: nil)
        }
        
}
