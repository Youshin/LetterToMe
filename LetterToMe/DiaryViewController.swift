//
//  DiaryViewController.swift
//  LetterToMe
//
//  Created by HyeJin Kim on 10/20/18.
//  Copyright © 2018 Youshin Kim. All rights reserved.
//

import UIKit
import SVProgressHUD
import StitchCore
import StitchRemoteMongoDBService

class DiaryViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var dayText: UITextView!
    var mood = ""
    let client = Stitch.defaultAppClient!
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let currentText = textView.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        
        let changedText = currentText.replacingCharacters(in: stringRange, with: text)
        
        return changedText.count <= 100
    }
    
    override func viewDidLoad() {
       
        
        super.viewDidLoad()
        

        let currentDateTime = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MM / dd / yyyy"
        formatter.timeStyle = .none
        formatter.dateStyle = .medium
        
        let dateString = formatter.string(from: currentDateTime)
        print(dayText)
        dayText.delegate = self
        dateLabel?.text = dateString
        // Do any additional setup after loading the view.
 
    }
    
    @IBAction func happyButton(_ sender: UIButton) {
        mood = "happy"
    }
    
    @IBAction func sadButton(_ sender: UIButton) {
        mood = "sad"
    }
    
    @IBAction func loveButton(_ sender: UIButton) {
        mood = "love"
    }
    
    @IBAction func angryButton(_ sender: UIButton) {
        mood = "angry"
    }
    @IBAction func sickButton(_ sender: UIButton) {
        mood = "sick"
    }
    @IBAction func saveButton(_ sender: UIButton) {
        if (mood == "") {
            SVProgressHUD.showInfo(withStatus: "Show us your mood")
            SVProgressHUD.dismiss(withDelay: 3)
        }
        
        if(dayText.text == ""){
            SVProgressHUD.showInfo(withStatus: "Tell us your story")
            SVProgressHUD.dismiss(withDelay: 3)
        }
        else {
            add()
            print("today's mood: ", mood,"today's text",dayText.text)
        }
    }
    private func add() {
        let arg1 = client.auth.currentUser!.id
        let arg2 = dateLabel.text ?? "N/A"
        let arg3 = mood
        let arg4 = dayText.text ?? "N/A"
        client.callFunction(
            withName: "add", withArgs: [arg1,arg2,arg3,arg4], withRequestTimeout: 5.0
        ) { (result: StitchResult<String>) in
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
