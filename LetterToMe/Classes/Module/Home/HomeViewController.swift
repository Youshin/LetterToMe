//
//  HomeViewController.swift
//  LetterToMe
//
//  Created by HyeJin Kim on 10/20/18.
//  Copyright © 2018 Youshin Kim. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var selectDate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let calendarView = UINib.init(nibName: "CalendarPickerViewController", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? CalendarPickerViewController {
            self.view.addSubview(calendarView.view)
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func handleSelectDate(_ sender: UITextField) {
    }
}
