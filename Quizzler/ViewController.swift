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
        Question(text: "Four + Two is equal to Six.", answer: "True")
        Question(text: "Five - Three is greater than One", answer: "True")
        Question(text: "Three + Eight is less than Ten", answer: "False")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = questions[questionNumber].answer
        
        if userAnswer == actualAnswer {
            print("Correct")
        } else {
            print("Incorrect")
        }
        
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = questions[questionNumber].text
    }
    
}

