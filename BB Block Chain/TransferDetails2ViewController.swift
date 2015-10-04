//
//  TransferDetails2ViewController.swift
//  BB Block Chain
//
//  Created by Nwamaka Nzeocha on 10/3/15.
//  Copyright © 2015 Nwamaka Nzeocha. All rights reserved.
//

import UIKit

class TransferDetails2ViewController: UIViewController {
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var amountButton: UIButton!
    @IBOutlet weak var toButton: UIButton!
    
    let myAVC = AmountViewController.self //parentheses does alloc init :)

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //fromTableViewCell.detailTextLabel?.text = "$2000"
        
        cancelButton.layer.borderColor = UIColor(red:188/255.0, green:179/255.0, blue:165/255.0, alpha: 1.0).CGColor
        
        amountButton.layer.borderColor = UIColor(red:209/255.0, green:0/255.0, blue:38/255.0, alpha: 1.0).CGColor
        
        toButton.layer.borderColor = UIColor(red:209/255.0, green:0/255.0, blue:38/255.0, alpha: 1.0).CGColor
    }

    
    override func viewDidAppear(animated: Bool) {
        
        let wasDefaultSet = NSUserDefaults.standardUserDefaults().boolForKey("isDollarAmountSaved")
        
        //change button color to grey after setting amount :)
        if(wasDefaultSet){
            amountButton.layer.borderColor = UIColor(red:171/255.0, green:171/255.0, blue:171/255.0, alpha: 1.0).CGColor
            amountButton.setTitleColor(UIColor(red:171/255.0, green:171/255.0, blue:171/255.0, alpha: 1.0), forState: .Normal)
        }
        
    }

    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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