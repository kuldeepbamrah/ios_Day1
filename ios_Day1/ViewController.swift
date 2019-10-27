//
//  ViewController.swift
//  ios_Day1
//
//  Created by MacStudent on 2019-10-26.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var rememberMeButton: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func logInButton( _ sender : UIButton)
    {
        let pass = passField.text!
        let email = emailField.text!
        if email == "kuldeep@gmail.com"
        {
            if pass == "1234"
            {
                print("Login Success")
            }else{
            print("Incorrect Password")
            }
            }else{
            print("Incorrect Email")
        }

}

}
