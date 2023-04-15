//
//  RegistrationViewController.swift
//  FanFicApp
//
//  Created by khasan on 13.04.2023.
//

import UIKit
import Firebase

class RegistrationViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func singUpClicked(_ sender: UIButton) {
        let stotyboardTabbar = UIStoryboard(name: "Tabbar", bundle: nil)
        let vc = stotyboardTabbar.instantiateViewController(withIdentifier: "Tabbar") as! TabbarController
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true, completion: nil)
        print("Hello")
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Error", message: "Fill in all the fields", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
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
extension RegistrationViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_textField: UITextField) -> Bool{
        
        let email = emailTextField.text!
        let password = passwordTextField.text!
        let confirmPassword = confirmPasswordTextField.text!
        
        if( !email.isEmpty && !password.isEmpty && !confirmPassword.isEmpty) {
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                if error == nil {
                    if let result = result {
                        print(result.user.uid)
                    }
                }
            }
        } else {
            showAlert()
        }
        
        return true
    }
}
