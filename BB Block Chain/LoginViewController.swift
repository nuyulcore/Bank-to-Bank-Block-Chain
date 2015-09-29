//
//  LoginViewController.swift
//  BB Block Chain
//
//  Created by Nwamaka Nzeocha on 9/28/15.
//  Copyright © 2015 Nwamaka Nzeocha. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userUsernameTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func loginButtonTapped(sender: AnyObject) {
        let userUsername = userUsernameTextField.text
        let userPassword = userPasswordTextField.text
        
        // check if user username & password match the stored email/pass
        let userUsernameStored = NSUserDefaults.standardUserDefaults().stringForKey("userUsername");
        let userPasswordStored = NSUserDefaults.standardUserDefaults().stringForKey("userPassword");
        
        // store info that user is successfully logged in
        if(userUsernameStored == userUsername){
            if(userPasswordStored == userPassword){
                NSUserDefaults.standardUserDefaults().setBool(true, forKey:"isUserLoggedIn");
                NSUserDefaults.standardUserDefaults().synchronize()
                //dismiss the login view
                self.dismissViewControllerAnimated(true, completion: nil)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
