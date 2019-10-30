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
        emailField.text = UserDefaults.standard.string(forKey: "email")
        passField.text = UserDefaults.standard.string(forKey: "pass")   
        
        
    }

    @IBAction func RemeberMe(_ sender: UISwitch)
    {
        if rememberMeButton.isOn
        {
            let email1 = emailField.text!
            let passtemp1 = passField.text!
            UserDefaults.standard.set(email1, forKey: "email")
            UserDefaults.standard.set(passtemp1, forKey: "pass")
            
        }
        
    
    }
    
    @IBAction func logInButton( _ sender : UIButton)
    {
        
        let emailtemp = emailField.text!
        if emailtemp.count > 10
        {
        let pass = passField.text!
        let email = emailField.text!
        if email == "kuldeep@gmail.com"
        {
            if pass == "1234"
            {
                print("Login Success")
                print(UserDefaults.standard.value(forKey: "email"))
                //let sb = UIStoryboard(name: "Main", bundle: nil)
                //let homeVC = sb.instantiateViewController(withIdentifier: "homeVC") as! WelcomeViewController
                //homeVC.name = "Hello"
                //        self.present(homeVC, animated: true, completion: nil)
                //navigationController?.pushViewController(homeVC, animated: true)
            }else{
            print("Incorrect Password")
            }
            }else{
            print("Incorrect Email")
        }
            

        } else{
            let alert = UIAlertController(title: "Email Error", message: "Your Email is less than 10 charachter. Please enter a valid email", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Ignore", style: .destructive, handler: nil))
            
            self.present(alert, animated: true)

        }
    
    

    
    
    
}
}
