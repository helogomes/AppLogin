//
//  ViewRegister.swift
//  loginUsuario
//
//  Created by user218997 on 4/30/22.
//

import UIKit

class ViewRegister: UIViewController{
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var surnameTextField: UITextField!
    
    @IBOutlet weak var officeTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    
    var email: [String] = []
    var password: [String] = []
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    
    @IBAction func buttonRegister(_ sender: UIButton) {
        
        if passwordTextField.text == confirmPasswordTextField.text
        {
            email.append(emailTextField.text ?? "")
            password.append(passwordTextField.text ?? "")
        }
    
    }

}



