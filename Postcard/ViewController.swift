//
//  ViewController.swift
//  Postcard
//
//  Created by michael king on 9/12/14.
//  Copyright (c) 2014 michael-king. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false;
        messageLabel.textColor = UIColor.blueColor()
        messageLabel.text = "sent a message to \(enterNameTextField.text).";
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterNameTextField.hidden = true
        enterMessageTextField.hidden = true
        enterMessageTextField.resignFirstResponder(); //close the keyboard
        mailButton.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

