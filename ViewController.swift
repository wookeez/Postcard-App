//
//  ViewController.swift
//  Postcard
//
//  Created by Eliot Arntz on 9/23/14.
//  Copyright (c) 2014 BitFountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Highlighted)
        mailButton.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.redColor()
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Highlighted)
        mailButton.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.redColor()

//        textField.resignFirstResponder()
        return true;
    }

}

