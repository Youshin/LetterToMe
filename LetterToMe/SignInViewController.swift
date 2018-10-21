//
//  SignInViewController.swift
//  LetterToMe
//
//  Created by Joseph Won on 10/20/18.
//  Copyright © 2018 Youshin Kim. All rights reserved.
//

import UIKit
import StitchCore

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var signInView: UIView!
    @IBOutlet weak var emailin: UITextField!
    @IBOutlet weak var passwordin: UITextField!
    
    @IBAction func signUpPressed(_ sender: Any) {
        print("Hello Button")
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseOut], animations: {
            self.signInView.transform = CGAffineTransform(translationX: 0, y: -500)
            //self.signInView.alpha = 0.5
        }, completion: nil)
        
        
    }
    
    
    @IBAction func signUpDone(_ sender: Any) {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseOut], animations: {
            self.signInView.transform = CGAffineTransform(translationX: 0, y: 0)
            self.signInView.alpha = 0.0
        }, completion: nil)
        //TODO: MAKE SURE THE USER INFO IS ENTERED INTO MONGODB STITCH
        
//        let emailPassClient = Stitch.defaultAppClient!.auth.providerClient(
//            fromFactory: userPasswordClientFactory
//        )
        
//        emailPassClient.register(withEmail: emailin.text!, withPassword: passwordin.text!) { result in
//            switch result {
//            case .success:
//                print("Registration email sent")
//            case .failure(let error):
//                print("Error sending registration email")
//            }
//        }
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
