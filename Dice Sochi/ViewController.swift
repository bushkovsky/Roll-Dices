//
//  ViewController.swift
//  Dice Sochi
//
//  Created by Иван Бушковский on 21.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var diceImageOne: UIImageView!
    
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func logoButtonPressed(_ sender: UIButton) {
        
        if(button.currentImage == #imageLiteral(resourceName: "AppBreweryLogo")){
            
            button.setImage(#imageLiteral(resourceName: "DiceeLogo"), for: UIControl.State.normal)
            
        }
        else{
            button.setImage(#imageLiteral(resourceName: "AppBreweryLogo"), for: UIControl.State.normal)
        }
    }
    
    @IBAction func changeDicesImage(_ sender: UIButton) {
        
        let dices = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        diceImageOne.image = dices[Int.random(in: 0...5)]
        diceImageTwo.image = dices[Int.random(in: 0...5)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

