//
//  WelcomeViewController.swift
//  ios_Day1
//
//  Created by MacStudent on 2019-10-28.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var labelWelcome: UILabel!
    public var name : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let nm = name
        {
            labelWelcome.text="Welcome \(name!)"
        }
        
        navigationItem.hidesBackButton=true
        allLogOutButton()
        
        // Do any additional setup after loading the view.
    }
    
    private func allLogOutButton()
    {
        let btnLogOut = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(WelcomeViewController.logout(sender:)))
        //        navigationItem.leftBarButtonItem = btnLogOut
        navigationItem.leftBarButtonItems = [btnLogOut,btnLogOut]
        
    }
    
    
    @objc func logout(sender: UIBarButtonItem)
    {
        navigationController?.popViewController(animated: true)
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
