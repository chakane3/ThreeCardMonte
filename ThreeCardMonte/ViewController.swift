//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Chakane Shegog on 5/4/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    
    @IBOutlet weak var cardOne: UIImageView!
    @IBOutlet weak var cardTwo: UIImageView!
    @IBOutlet weak var cardThree: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func newGame(_ sender: UIButton) {
        
        
        
    }
    
    @IBAction func chooseCard(_ sender: UIButton) {
        let randInt = Int.random(in: 0..<3)
        
        
        switch sender.tag {
            case 0:
                if sender.tag == randInt {
                    displayLabel.text = "you win!"
                    
                } else {
                    displayLabel.text = "you lose!"
                    
                }
                
            case 1:
                if sender.tag == randInt {
                    displayLabel.text = "you win!"
                } else {
                    displayLabel.text = "you lose!"
                }
                
            case 2:
                if sender.tag == randInt {
                    displayLabel.text = "you win!"
                } else {
                    displayLabel.text = "you lose!"
                }
                
            default:
                print("nah fuck u")
        }
    }
    
}

