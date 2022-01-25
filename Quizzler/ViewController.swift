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
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = questions[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Correct")
        }
        
        questionNumber += 1
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = questions[questionNumber][0]
    }
    
}

