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
        "Four + Two is equal to Six.",
        "Bla-Bla + Bla-Bla-Bla is equal to Six.",
        "BuuGaaaa"
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = quiz[0]
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
    
}

