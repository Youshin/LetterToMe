//
//  InboxViewController.swift
//  LetterToMe
//
//  Created by HyeJin Kim on 10/21/18.
//  Copyright © 2018 Youshin Kim. All rights reserved.
//

import UIKit
import StitchCore

class InboxViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var letterTableView: UITableView!
    
    var letters : [String] = []
    let client = Stitch.defaultAppClient!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        letterTableView.delegate = self
        letterTableView.dataSource = self
        getLetter()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    func getLetter() {
        let userid = client.auth.currentUser?.id ?? ""
        print(userid)
        client.callFunction(withName: "getLetter", withArgs: [userid],withRequestTimeout: 5.0
        ) { (result: StitchResult) in
            switch result {
            case .success(let stringResult):
                print("String result: \(stringResult)")
            case .failure(let error):
                print("Error retrieving String: \(String(describing: error))")
            }
        }
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
