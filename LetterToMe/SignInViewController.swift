//
//  SignInViewController.swift
//  LetterToMe
//
//  Created by Joseph Won on 10/20/18.
//  Copyright © 2018 Youshin Kim. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var signInView: UIView!
    
    @IBAction func signUpPressed(_ sender: Any) {
        print("Hello Button")
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseOut], animations: {
            self.signInView.transform = CGAffineTransform(translationX: 0, y: -500)
            //self.signInView.alpha = 0.5
        }, completion: nil)
        
        
    }
    
    
    @IBAction func facebookPressed(_ sender: Any) {
        
    }
    
    @IBAction func signUpDone(_ sender: Any) {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseOut], animations: {
            self.signInView.transform = CGAffineTransform(translationX: 50, y: 0)
            self.signInView.alpha = 0.0
        }, completion: nil)
        //TODO: MAKE SURE THE USER INFO IS ENTERED INTO MONGODB STITCH
        
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
