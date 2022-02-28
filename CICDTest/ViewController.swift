//
//  ViewController.swift
//  CICDTest
//
//  Created by 박연배 on 2022/02/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    
    
    func calculateTextFieldCount() -> Int {
        return firstTextField.text?.count ?? 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

