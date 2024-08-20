//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped!")
        var diceFaces = [ #imageLiteral(resourceName: "DiceOne"),  #imageLiteral(resourceName: "DiceTwo"),  #imageLiteral(resourceName: "DiceThree"),  #imageLiteral(resourceName: "DiceFour"),  #imageLiteral(resourceName: "DiceFive"),  #imageLiteral(resourceName: "DiceSix")]
        leftDiceNumber += 1;
        if leftDiceNumber == 6 {
            leftDiceNumber = 0
        }
        diceImageView1.image = diceFaces[leftDiceNumber]
        diceImageView2.image = diceFaces[5 - leftDiceNumber]
    }
    
}

