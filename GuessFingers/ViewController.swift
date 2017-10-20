//
//  ViewController.swift
//  GuessFingers
//
//  Created by George Garcia on 4/18/17.
//  Copyright © 2017 George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var answerLabel: UILabel!

    @IBAction func guessButton(_ sender: AnyObject) {
        
        //print("Guess pressed")
        let diceRoll = String(arc4random_uniform(6))
        
        if textField.text == diceRoll{
            
            answerLabel.text = "You are correct!!"
        }
        else{
            answerLabel.text = "Wrong! It was: " + diceRoll
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

