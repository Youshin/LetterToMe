//
//  InboxViewController.swift
//  LetterToMe
//
//  Created by HyeJin Kim on 10/21/18.
//  Copyright © 2018 Youshin Kim. All rights reserved.
//

import UIKit

class InboxViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var letterTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        letterTableView.delegate = self
        letterTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
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
