//
//  ViewController.swift
//  Postcard
//
//  Created by Sam Fader on 10/6/14.
//  Copyright (c) 2014 Skrimp and Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding a comment to test commits
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = "Thanks, " + enterNameTextField.text + "!"
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = nil
        enterNameTextField.text = nil
        enterMessageTextField.resignFirstResponder()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    
}

