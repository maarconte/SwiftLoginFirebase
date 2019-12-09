//
//  ViewController.swift
//  LoginFirebase
//
//  Created by Mathilde Arconte on 09/12/2019.
//  Copyright © 2019 Mathilde Arconte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var SignUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        Utilities.styleButtonPrimary(LoginButton)
        Utilities.styleButtonAccent(SignUpButton)
    }


}

