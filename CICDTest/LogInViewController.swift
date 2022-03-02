//
//  LogInViewController.swift
//  CICDTest
//
//  Created by 박연배 on 2022/03/02.
//

import UIKit

class LogInViewController: UIViewController {
    
    let validator = Validator()
    var user = User(email: "", password: "", check: "")

    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var checkTextField: UITextField!
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        user = User(email: idTextField.text!,
                    password: passwordTextField.text!,
                    check: checkTextField.text!)
        
        
        
        if validator.isValidId(id: user.email) && validator.isValidPassword(password: user.password) && validator.isEqualPassword(password: user.password, check: user.check) {
            print("성공")
        } else {
            print("실패")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
