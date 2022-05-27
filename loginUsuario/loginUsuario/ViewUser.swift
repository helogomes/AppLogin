//
//  ViewUser.swift
//  loginUsuario
//
//  Created by user218997 on 4/30/22.
//

import UIKit

class ViewUser: UIViewController{

        
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var officeTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var labelError: UILabel!
    
 
       
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
       
}
            
            

        @IBAction func buttonRegister(_ sender: UIButton) {
            
            
            if passwordTextField.text == confirmPasswordTextField.text
            {
                AppModel.sharedInstance.sharedArrayEmail.append(emailTextField.text ?? "")
                AppModel.sharedInstance.sharedArrayPassword.append(passwordTextField.text ?? "")
                AppModel.sharedInstance.sharedArrayName.append(nameTextField.text ?? "")
                AppModel.sharedInstance.sharedArrayAge.append(ageTextField.text ?? "")
                AppModel.sharedInstance.sharedArrayOffice.append(officeTextField.text ?? "")
                self.performSegue(withIdentifier: "validation", sender: nil)
            } else
            {
                self.labelError.text = "Erro na confirmação de senha"
            }
            
        
        }
    
    }

    





