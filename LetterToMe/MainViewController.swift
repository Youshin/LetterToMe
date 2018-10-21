//
//  MainViewController.swift
//  LetterToMe
//
//  Created by 김유신 on 2018. 10. 21..
//  Copyright © 2018년 Youshin Kim. All rights reserved.
//

import Foundation
import UIKit
import StitchCore

class MainViewController: UIViewController {
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var letterView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentDateTime = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MM / dd / yyyy"
        formatter.timeStyle = .none
        formatter.dateStyle = .medium
        
        let dateString = formatter.string(from: currentDateTime)
//        if(DB에 날짜가 없을때 (편지가 없을떄)){
//            date?.text = dateString
//        }
//        else {
//            print("from DB with LETTER")
//        }
        
    }
    
}
