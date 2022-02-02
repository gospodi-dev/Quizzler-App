//
//  ViewController.swift
//  Quizzler App
//
//  Created by Gospodi on 02.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    let quiz = [
        
        Question(text: "Four + Two is equal to Six.", answer: "True"),
        Question(text: "Bla-Bla + Bla-Bla-Bla is equal to Six.", answer: "True"),
        Question(text: "BuuGaaaa", answer: "False")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True, False
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Верно!")
        } else {
            print("Неверно!")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

