import UIKit
import Foundation
import StitchCore

class accountViewController: UIViewController {
    
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func onTouchSignin(_ sender: Any) {
        signin()
    }
    
    func signin() {
        let client = Stitch.defaultAppClient!
        let credential = UserPasswordCredential.init(withUsername: "youshin1411@gmail.com", withPassword: "123456")
        client.auth.login(withCredential: credential) {
            result in
                switch result {
                    case .success:
                    print("Successfully logged in")
                    case .failure(let error):
                    print("Error logging in with email/password auth: \(error)")
                }
        }
    }
}
