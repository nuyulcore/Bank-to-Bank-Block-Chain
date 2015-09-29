//
//  ViewController.swift
//  BB Block Chain
//
//  Created by Nwamaka Nzeocha on 9/27/15.
//  Copyright © 2015 Nwamaka Nzeocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // when user tries to access Protected page, present login view
    override func viewDidAppear(animated: Bool) {
        
        let isUserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isUserLoggedIn")
        
        if(!isUserLoggedIn){
            self.performSegueWithIdentifier("loginView", sender: self)
        }
    }

    @IBAction func logoutButtonTapped(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setBool(false, forKey:
        "isUserLoggedIn")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        self.performSegueWithIdentifier("loginView", sender: self)
    }

}

