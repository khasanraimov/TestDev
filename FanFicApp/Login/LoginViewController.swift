//
//  LoginViewController.swift
//  FanFicApp
//
//  Created by khasan on 13.04.2023.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        

        // Do any additional setup after loading the view.
    }

    
    @IBAction func logInClicked(_ sender: UIButton) {
        let stotyboardTabbar = UIStoryboard(name: "Tabbar", bundle: nil)
        let vc = stotyboardTabbar.instantiateViewController(withIdentifier: "Tabbar") as! TabbarController
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true, completion: nil)
        print("Hello")
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


extension LoginViewController: UITextFieldDelegate{
    
}
