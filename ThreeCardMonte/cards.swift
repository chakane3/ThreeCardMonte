//
//  cards.swift
//  ThreeCardMonte
//
//  Created by Chakane Shegog on 5/5/21.
//

import Foundation
import UIKit

struct Cards {
    
    let image: UIImage
    
    
    static func getCards() -> [Cards] {
        let kingCard = Cards.init(image: UIImage.init(named: "kingCard")!)
        let threeCard = Cards.init(image: UIImage.init(named: "threeCard")!)
        let backOfCard = Cards.init(image: UIImage.init(named: "backOfCard")!)
        let cards = [kingCard, threeCard, backOfCard]
        return cards
    }
}
