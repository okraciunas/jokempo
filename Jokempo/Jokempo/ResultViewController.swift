//
//  ResultViewController.swift
//  Jokempo
//
//  Created by terced-leonardoo on 09/01/19.
//  Copyright © 2019 OKraciunas. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var userChoice: UserChoice!
    var resultImage: UIImage!
    var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("-> \(userChoice.rawValue)")
    }
    
    @IBAction func playAgain(sender: UIButton) -> Void {
        self.dismiss(animated: true, completion: nil)
    }
}
