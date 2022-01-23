//
//  ViewController.swift
//  Quizzler
//
//  Created by Michael Callahan on 1/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let questions = [
        "Four + Two is equal to Six.",
        "Five - Three is greater than One",
        "Three + Eight is less than Ten"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questions[0]
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
    }
    
}

