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
        
//        navigationController.title = "Home"
        navigationController.tabBarItem.image = UIImage(named: "1")
        
        let secondController = CalendarPickerViewController()
        let secondNavigationController = UINavigationController(rootViewController: secondController)
 //       secondNavigationController.title = "Second"
        secondNavigationController.tabBarItem.image = UIImage(named: "2")
        
        let thirdController = UIViewController()
        let thirdNavigationController = UINavigationController(rootViewController: thirdController)
//        thirdNavigationController.title = "third"
        thirdNavigationController.tabBarItem.image = UIImage(named: "3")
        
        let fourthController = UIViewController()
        let fourthNavigationController = UINavigationController(rootViewController: fourthController)
//        fourthNavigationController.title = "fourth"
        fourthNavigationController.tabBarItem.image = UIImage(named: "4")
        
        let fifthController = UIViewController()
        let fifthNavigationController = UINavigationController(rootViewController: fifthController)
//        fifthNavigationController.title = "fifth"
        fifthNavigationController.tabBarItem.image = UIImage(named: "5")
        
        viewControllers = [navigationController, secondNavigationController, thirdNavigationController, fourthNavigationController, fifthNavigationController]
        
        
        
        
    }
}
