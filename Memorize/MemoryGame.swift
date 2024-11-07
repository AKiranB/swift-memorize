//
//  MemoryGame.swift
//  Memorize
//
//  Created by Kiran Boyle on 07.11.24.
//

import Foundation


struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        
        for index in 0..<numberOfPairsOfCards {
            let content: CardContent = cardContentFactory(index)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
        
    func choose(card:Card){
        
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
    }
}
