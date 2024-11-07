//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kiran Boyle on 07.11.24.
//

import SwiftUI


class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame(numberOfPairsOfCards: 5) { index in
        ["Card 1", "Card 2", "Card 3"][index]
    }

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
