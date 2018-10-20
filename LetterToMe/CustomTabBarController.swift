//
//  CustomTabBarController.swift
//  LetterToMe
//
//  Created by 김유신 on 2018. 10. 20..
//  Copyright © 2018년 Youshin Kim. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeController = ViewController(collectionViewLayout: UICollectionViewLayout())
        let navigationController = UINavigationController(rootViewController: homeController)
        
        navigationController.title = "Home"
       // navigationController.tabBarItem.image = UIImage(named: <#T##String#>)
        
        let secondController = UIViewController()
        let secondNavigationController = UINavigationController(rootViewController: secondController)
        secondNavigationController.title = "Second"
        // secondNavigationController.tabBarItem.image = UIImage(named: <#T##String#>)

        
        viewControllers = [navigationController, secondNavigationController]
        
        
        
        
    }
}
