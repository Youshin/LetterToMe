//
//  DiaryViewController.swift
//  LetterToMe
//
//  Created by HyeJin Kim on 10/20/18.
//  Copyright © 2018 Youshin Kim. All rights reserved.
//

import UIKit
import SVProgressHUD

class DiaryViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var dayText: UITextView!
    var mood = ""
    
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
            print("DB")
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
