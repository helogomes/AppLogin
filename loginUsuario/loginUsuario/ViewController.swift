//
//  ViewController.swift
//  loginUsuario
//
//  Created by Heloisa on 4/27/22.
//

import UIKit

class ViewController: UIViewController {

    var homeView = ViewUser()
    
    var login: [String] = []
    var pass: [String] = []
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var labelError: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      /*  self.login = homeView.email
        self.pass = homeView.password*/
        
    }
    

@IBAction func buttonLogin(_ sender: UIButton) {
    

    if [self.emailTextField.text] == AppModel.sharedInstance.sharedArrayEmail && [self.passwordTextField.text] == AppModel.sharedInstance.sharedArrayPassword{
        self.performSegue(withIdentifier: "Cards", sender: nil)
        }else{
            labelError.text = "Email ou senha incorretos"
        }
    
    }
    
    

}
       

    
    

