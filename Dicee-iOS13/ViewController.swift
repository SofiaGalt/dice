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
    let diceFaces = [ #imageLiteral(resourceName: "DiceOne"),  #imageLiteral(resourceName: "DiceTwo"),  #imageLiteral(resourceName: "DiceThree"),  #imageLiteral(resourceName: "DiceFour"),  #imageLiteral(resourceName: "DiceFive"),  #imageLiteral(resourceName: "DiceSix")]
    
    var leftDiceNum = 0
    var rightDiceNum = 0

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        var leftDiceNum = Int.random(in: 0...5)
        var rightDiceNum = Int.random(in: 0...5)
        
        diceImageView1.image = diceFaces[leftDiceNum]
        diceImageView2.image = diceFaces[rightDiceNum]
    }
    
}

