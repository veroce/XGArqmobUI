//
//  TutorialPageController.swift
//  demoAr
//
//  Created by Vero on 25/03/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
public protocol AmTutorialPagerControllerDelegate{
    func changePage(page: Int)
    func actionButton(action: AmButtonAction)
    
}
public class AmTutorialPageController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    
    var items: Array<AmTutorialItem>?
    var delegatePager: AmTutorialPagerControllerDelegate?
    var currentPage: Int = 0
    var style: AmTutorialStyle = AmTutorialStyle()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    
    func loadPager(index: Int = 0){
        if (self.items?.count  ?? 0) > 0{
            var viewControllers = Array<UIViewController>()
            viewControllers.append(self.viewControllerAtIndex(index: index))
            self.setViewControllers(viewControllers, direction: .forward, animated: false, completion: nil)
        } else {
            // Mostramos la pantalla deno hay usuarios
        }
        
    }
    func viewControllerAtIndex(index: Int) -> UIViewController{
        let sb = UIStoryboard(name: "AmTutorial", bundle: nil)
        let vc: AmTutorialPageVC = sb.instantiateViewController(withIdentifier: "AmTutorialPageVC") as! AmTutorialPageVC
        vc.index = index
        vc.delegate = self
        vc.style = style
        if let arrayItems = items {
            let item = arrayItems[index]
            vc.itemPage = item
            vc.lastPage = (index == arrayItems.count - 1)
            
            
        }
        
        return vc
    }
    
    //MARK: UIPageViewControllerDelegate
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index:Int = (viewController as? AmTutorialPageVC)?.index else{
            return nil;
        }
        if index == 0 || index == NSNotFound {
            return nil
        }
        if index <= -1 {
            return nil
        }
        self.currentPage = self.currentPage - 1
        return viewControllerAtIndex(index: index - 1)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index:Int = (viewController as? AmTutorialPageVC)?.index else{
            return nil;
        }
        
        if index + 1 == self.items?.count {
            return nil
        }
        self.currentPage = self.currentPage + 1
        return viewControllerAtIndex(index: index + 1)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard completed else { return }
        if let index = (pageViewController.viewControllers?.first as? AmTutorialPageVC)?.index {
            guard let delegate = self.delegatePager else{
                return
            }
            delegate.changePage(page: index)
        }
    }
    
    func getCurrentPage() -> Int?{
        if let page = (self.viewControllers?.first as? AmTutorialPageVC)?.index {
            return page
        }
        return nil
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController]) {
        if let vc = pendingViewControllers.first {
            guard let delegatePager = self.delegatePager else {
                return
            }
            if let index = (vc as? AmTutorialPageVC)?.index {
                delegatePager.changePage(page: index)
            }
        }
    }
    
    func moveToViewController(index: Int){
        var direction: UIPageViewController.NavigationDirection = .reverse
        if index <= self.currentPage {
            direction = .reverse
        }else{
            direction = .forward
        }
        if index >= 0 {
            var viewController: Array<UIViewController> = Array<UIViewController>()
            viewController.append(self.viewControllerAtIndex(index: index))
            self.setViewControllers(viewController, direction: direction, animated: true, completion: nil)
            guard let delegatePager = self.delegatePager else {
                return
            }
            delegatePager.changePage(page: index)
        }
    }
    
    
}
extension AmTutorialPageController: AmTutorialPageDelegate {
    func actionButton(action: AmButtonAction) {
        guard let delegatePager = self.delegatePager else {
            return
        }
        delegatePager.actionButton(action: action)
    }
    
    
}

