//
//  UserChoice.swift
//  Jokempo
//
//  Created by terced-leonardoo on 09/01/19.
//  Copyright © 2019 OKraciunas. All rights reserved.
//

enum PlayerChoice: String {
    case Rock = "Pedra"
    case Paper = "Papel"
    case Scissors = "Tesoura"
    
    static public func randomChoice() -> PlayerChoice {
        let choices = [PlayerChoice.Rock, PlayerChoice.Paper, PlayerChoice.Scissors]
        let randomChoice = choices.randomElement()
        
        if let randomChoice = randomChoice {
            return randomChoice
        }
        
        return PlayerChoice.randomChoice()
    }
}
