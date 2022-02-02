//
//  Question.swift
//  Quizzler App
//
//  Created by Gospodi on 02.02.2022.
//

import Foundation


struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }

}
