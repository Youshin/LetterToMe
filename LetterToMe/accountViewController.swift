import UIKit
import Foundation
import StitchCore

class accountViewController: UIViewController {
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUp(_ sender: Any) {
        performSegue(withIdentifier: "seguetosignup", sender: self)
    }
    
    @IBAction func onTouchSignin(_ sender: Any) {
        signin()
    }
    
    func signin() {
        
        let client = Stitch.defaultAppClient!
        let credential = UserPasswordCredential.init(withUsername: email.text ?? "", withPassword: password.text ?? "")
        client.auth.login(withCredential: credential) {
            result in
                switch result {
                    case .success:
                    print("Successfully logged in")
                    DispatchQueue.main.async {
                         self.performSegue(withIdentifier: "loginSegue", sender: self)
                    }
                    case .failure(let error):
                    print("Error logging in with email/password auth: \(error)")
                }
        }
    }
}
