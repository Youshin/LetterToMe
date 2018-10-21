//
//  ViewController.swift
//  LetterToMe
//
//  Created by 김유신 on 2018. 10. 20..
//  Copyright © 2018년 Youshin Kim. All rights reserved.
//

import UIKit
import Foundation
import StitchCore

class ViewController: UIViewController {
    
  
    private lazy var stitchClient = Stitch.defaultAppClient!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Letter To Me"
        
        let client = Stitch.defaultAppClient!
        
        // print("logging in anonymously")
        
        
        if !client.auth.isLoggedIn {
            print("hello")
            notSignedIn()
        }else {
//
//        let credential = UserPasswordCredential.init(withUsername: "youshin", withPassword: "123456")
//
//        client.auth.login(withCredential: credential) { result in
//            switch result {
//            case .success:
//                print("Successfully logged in")
//            case .failure(let error):
//                print("Error logging in with email/password auth: \(error)")
//            }
//        }
        
//        client.auth.login(withCredential: AnonymousCredential()) { result in
//            switch result {
//            case .success(let user):
//                print("logged in anonymous as user \(user.id)")
//                DispatchQueue.main.async {
//                    // update UI accordingly
//                }
//            case .failure(let error):
//                print("Failed to log in: \(error)")
//            }
//        }
        
        client.callFunction(
            withName: "Users", withArgs: [], withRequestTimeout: 5.0
        ) { (result: StitchResult<String>) in
            switch result {
            case .success(let stringResult):
                print("String result: \(stringResult)")
            case .failure(let error):
                print("Error retrieving String: \(String(describing: error))")
            }
        }
        }
        // in a view controller's properties, for example
   
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func notSignedIn() {
        let nextVC = accountViewController() 
        //you can set properties of the nextVC here
            
        self.present(nextVC, animated: true, completion: nil)
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

