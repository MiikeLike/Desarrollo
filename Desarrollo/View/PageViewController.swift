//
//  PageViewController.swift
//  Desarrollo
//
//  Created by Mikel Valle on 3/11/22.
//

import UIKit

class PageViewController: UIPageViewController {

    private var myControllers: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        let myPageOne = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "pageOne")
        let myPageTwo = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "pageTwo")
        
        myControllers.append(myPageOne)
        myControllers.append(myPageTwo)
        
        setViewControllers([myPageOne], direction:.forward , animated: true)
        
        dataSource = self
    }
}


extension PageViewController: UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        if index == 0{
            return myControllers.last
        }
        return myControllers.first
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        if index == 1{
            return myControllers.last
        }
        return myControllers.first
    }
}
