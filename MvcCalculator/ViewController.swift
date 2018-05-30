//
//  ViewController.swift
//  MvcCalculator
//
//  Created by Abdelaziz on 5/29/18.
//  Copyright © 2018 ABD EL AZIZ MOHAMED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    @IBOutlet var display: UILabel!
    var UserInTheMiddleOfTyping = false;
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if UserInTheMiddleOfTyping {
            let currentDisplayText = display.text!
            display.text = currentDisplayText + digit
        }else{
            display.text = digit
            UserInTheMiddleOfTyping = true
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        UserInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "Pi":
                display.text = String(Double.pi)
            default:
                break
            }
        }
    }
}


















