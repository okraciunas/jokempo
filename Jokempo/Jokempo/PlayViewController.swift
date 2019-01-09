//
//  ViewController.swift
//  Jokempo
//
//  Created by terced-leonardoo on 09/01/19.
//  Copyright © 2019 OKraciunas. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rock(sender: UIButton) {
        let resultViewController: ResultViewController = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        resultViewController.userChoice = UserChoice.rock
        
        present(resultViewController, animated: true, completion: nil)
    }
    
    @IBAction func paper(sender: UIButton) {
        performSegue(withIdentifier: "performSegueShowResult", sender: UserChoice.paper)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var userChoice: UserChoice!
        
        if segue.identifier == "performSegueShowResult" {
            userChoice = UserChoice.paper
        }
        else if segue.identifier == "prepareShowResult" {
            userChoice = UserChoice.scissors
        }
        
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        resultViewController.userChoice = userChoice
    }
}
