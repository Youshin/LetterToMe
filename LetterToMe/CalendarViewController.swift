//
//  ViewController.swift
//  LetterToMe
//
//  Created by 김유신 on 2018. 10. 20..
//  Copyright © 2018년 Youshin Kim. All rights reserved.
//

import UIKit
import JTAppleCalendar


class CalendarViewController: UIViewController {
    let formatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Calender"

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//extension UIViewController: JTAppleCalendarViewDelegate, JTAppleCalendarViewDataSource {
//    public func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
//        <#code#>
//    }
//
//    public func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
//        <#code#>
//    }
//
//    public func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
//        //let startDate = self.formatter.
//        //let parameters = ConfigurationParameters(startDate: Date, endDate: Date)
//        <#code#>
//    }
//
//
//    }



