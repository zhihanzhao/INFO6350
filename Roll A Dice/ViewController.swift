//
//  ViewController.swift
//  Roll A Dice
//
//  Created by 赵芷涵 on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imgOne: UIImageView!
    @IBOutlet weak var imgTwo: UIImageView!
    
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblScore: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func below7Btn(_ sender: Any) {
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)" //another way: "Dice" + String(one)
        let imgTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
        
        if one + two < 7{
            lblText.text = "You win!"
            score += 1
        }else{
            lblText.text = "You lost!"
            score -= 1
        }
        
        lblScore.text = "Score = \(score)"
    }
    
    @IBAction func lucky7Btn(_ sender: Any) {
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
        
        if one + two == 7{
            lblText.text = "You win!"
            score += 7
        }else{
            lblText.text = "You lost!"
            score -= 1
        }
        
        lblScore.text = "Score = \(score)"
    }
    
    @IBAction func above7Btn(_ sender: Any) {
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
        
        if one + two > 7{
            lblText.text = "You win!"
            score += 1
        }else{
            lblText.text = "You lost!"
            score -= 1
        }
        
        lblScore.text = "Score = \(score)"
    }
    
}

