//
//  ResultViewController.swift
//  Jokempo
//
//  Created by terced-leonardoo on 09/01/19.
//  Copyright © 2019 OKraciunas. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    public var userChoice: PlayerChoice!
    
    @IBOutlet private weak var resultImage: UIImageView!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        displayRestul()
    }
    
    func displayRestul() -> Void {
        let computerChoice: PlayerChoice = PlayerChoice.randomChoice()
        let match = "\(userChoice.rawValue) vs. \(computerChoice.rawValue)"
        
        var resultImageName: String!
        var resultLabelText: String!
        
        switch (userChoice!, computerChoice) {
        case (.Rock, .Scissors),
             (.Paper, .Rock),
             (.Scissors, .Paper):
            resultImageName = "\(userChoice.rawValue)-\(computerChoice.rawValue)"
            resultLabelText = "\(match) - \(GameResultMessages.Win.rawValue)"
        case (.Scissors, .Rock),
             (.Paper, .Scissors),
             (.Rock, .Paper):
            resultImageName = "\(computerChoice.rawValue)-\(userChoice.rawValue)"
            resultLabelText = "\(match) - \(GameResultMessages.Lose.rawValue)"
        default:
            resultImageName = "draw"
            resultLabelText = "\(match) - \(GameResultMessages.Draw.rawValue)"
        }
        
        resultImage.image = UIImage(named: resultImageName.lowercased())
        resultLabel.text = resultLabelText
    }
    
    @IBAction func playAgain(sender: UIButton) -> Void {
        self.dismiss(animated: true, completion: nil)
    }
}
