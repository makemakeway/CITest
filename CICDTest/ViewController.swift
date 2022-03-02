//
//  ViewController.swift
//  CICDTest
//
//  Created by 박연배 on 2022/02/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func firstButtonClicked(_ sender: UIButton) {
        resultLabel.text = firstTextField.text
    }
    
    func calculateTextFieldCount() -> Int {
        return firstTextField.text?.count ?? 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

