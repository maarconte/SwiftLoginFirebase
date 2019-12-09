//
//  SignUpViewController.swift
//  LoginFirebase
//
//  Created by Mathilde Arconte on 09/12/2019.
//  Copyright © 2019 Mathilde Arconte. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    // Text Fields
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    // Button
    @IBOutlet weak var SignUpButton: UIButton!
    // Label
    @IBOutlet weak var ErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         setUpElements()
    }
    func setUpElements(){
        ErrorLabel.alpha = 0
        Utilities.styleTextField(FirstNameTextField)
        Utilities.styleTextField(LastNameTextField)
        Utilities.styleTextField(EmailTextField)
        Utilities.styleTextField(PasswordTextField)
        
        Utilities.styleButtonAccent(SignUpButton)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func SignUpTapped(_ sender: Any) {
    }
}
