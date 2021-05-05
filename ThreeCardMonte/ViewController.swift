//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Chakane Shegog on 5/4/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets and  buttons
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var card2Button: UIButton!
    @IBOutlet weak var card3Button: UIButton!
    @IBOutlet weak var card1Button: UIButton!
    
    @IBOutlet weak var cardOne: UIImageView!
    @IBOutlet weak var cardTwo: UIImageView!
    @IBOutlet weak var cardThree: UIImageView!
    
    // card data
    let cards = Cards.getCards()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkCard(_ sender: UIButton) {
        let randInt = Int.random(in: 0..<3)
        switch sender.tag {
       
               case 0:
                   if sender.tag == randInt {
                       displayLabel.text = "you win!"
                    cardOne.image = cards[0].image
                    
       
                   } else {
                       displayLabel.text = "you lose!"
                    cardTwo.image = cards[1].image
                    cardThree.image = cards[2].image
       
                   }
       
               case 1:
                   if sender.tag == randInt {
                       displayLabel.text = "you win!"
                    cardTwo.image = cards[0].image
                   } else {
                       displayLabel.text = "you lose!"
                    cardOne.image = cards[1].image
                    cardThree.image = cards[2].image
                   }
       
               case 2:
                   if sender.tag == randInt {
                       displayLabel.text = "you win!"
                    cardThree.image = cards[0].image
                   } else {
                       displayLabel.text = "you lose!"
                    cardOne.image = cards[1].image
                    cardTwo.image = cards[2].image
                   }
       
               default:
                   print("nah fuck u")
               }
    }
    


    @IBAction func newGame(_ sender: UIButton) {
        print("The game has begun")
        displayLabel.text = "play game"
        cardOne.image = cards[2].image
        cardTwo.image = cards[2].image
        cardThree.image = cards[2].image
    }
    
    
}

//func updateCardAtIndex(index: Int) {
//    let card = cards[index]
//}
    
//    @IBAction func startGame(_ sender: UIButton) {
//        print("The game has begun")
//        let randInt = Int.random(in: 0..<3)
//        switch sender.tag {
//
//        case 0:
//            if sender.tag == randInt {
//                displayLabel.text = "you win!"
//                cardOne.image = cards.kingCard
//
//            } else {
//                displayLabel.text = "you lose!"
//                cardTwo.image = cards.threeCard
//                cardThree.image = cards.backOfCard
//
//            }
//
//        case 1:
//            if sender.tag == randInt {
//                displayLabel.text = "you win!"
//                cardOne.image = cards.kingCard
//            } else {
//                displayLabel.text = "you lose!"
//                cardTwo.image = cards.threeCard
//                cardThree.image = cards.backOfCard
//            }
//
//        case 2:
//            if sender.tag == randInt {
//                displayLabel.text = "you win!"
//                cardOne.image = cards.kingCard
//            } else {
//                displayLabel.text = "you lose!"
//                cardTwo.image = cards.threeCard
//                cardThree.image = cards.backOfCard
//            }
//
//        default:
//            print("nah fuck u")
//        }
//        cardOne.image = cards.backOfCard
//        cardTwo.image = cards.backOfCard
//        cardThree.image = cards.backOfCard
//    }
//}
    
    


