//
//  LetterViewController.swift
//  LetterToMe
//
//  Created by HyeJin Kim on 10/21/18.
//  Copyright © 2018 Youshin Kim. All rights reserved.
//

import UIKit
import SVProgressHUD
import StitchCore

class LetterViewController: UIViewController {
    
    var receiveDate = 0
    let client = Stitch.defaultAppClient!

    @IBOutlet weak var currentDate: UILabel!
    @IBOutlet weak var letterView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentDateTime = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MM / dd / yyyy"
        formatter.timeStyle = .none
        formatter.dateStyle = .medium
        
        let dateString = formatter.string(from: currentDateTime)
        currentDate?.text = dateString
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sentButton(_ sender: UIButton) {
        if (letterView.text == "") {
            SVProgressHUD.showInfo(withStatus: "Send a letter to you in the future")
            SVProgressHUD.dismiss(withDelay: 5)
        }
        else {
            let number = Int.random(in: 3 ... 5)
            receiveDate = number * 7
            client.callFunction(withName: "getLetter", withArgs: [receiveDate, currentDate.text ?? "", letterView.text]){ result in
                
            }
//            print("DB")
        }
    }
    
}
