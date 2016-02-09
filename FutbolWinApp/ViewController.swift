//
//  ViewController.swift
//  FutbolWinApp
//
//  Created by IngR10 on 1/12/16.
//  Copyright © 2016 Innovatie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    let fwinColor = FutbolWinColors()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = fwinColor.futbolWinGreenColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Métodos de login
    
    @IBAction func doLogin(sender: UIButton) {
        print("Procede a hacer el login Urs:\(userTextField.text!) y Pass:\(passwordTextField.text!) !!!!")
        
        let fwUser = FWin_User()
        fwUser.userName = userTextField.text!
        fwUser.password = passwordTextField.text!
        
        if (fwUser.userName! == "1") {
            self.performSegueWithIdentifier("toIndexSegue", sender: self)
        } else if (fwUser.userName! == "2") {
            self.performSegueWithIdentifier("toIndexSegue2", sender: self)
        } else if (fwUser.userName! == "3.1"
            || fwUser.userName! == "3.2"
            || fwUser.userName! == "3.3") {
            self.performSegueWithIdentifier("toIndexSegue3", sender: self)
        }
    }
    
    //MARK: Métodos de transisión de views
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let mainDynamicStackViewController = segue.destinationViewController as? MainDynamicStackViewController {
            mainDynamicStackViewController.optionToshowStack = userTextField.text!
        }
        
    }
    

    
    


}

