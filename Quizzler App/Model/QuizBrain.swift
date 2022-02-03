//
//  QuizBrain.swift
//  Quizzler App
//
//  Created by Gospodi on 02.02.2022.
//

import Foundation

struct QuizBrain {
    let quiz = [
        
        Question(q: "Первую аналоговую вычислительную машину построили в XVII в.", a: "False"),
        Question(q: "На Земле существуют многоклеточные животные, способные пережить недельное пребывание в открытом космосе.", a: "True"),
        Question(q: "Флаг Непала имеет треугольную форму.", a: "False"),
        Question(q: "Иван Шишкин не рисовал медведей в сосновом лесу.", a: "True"),
        Question(q: "Существуют сверла, способные сверлить квадратные отверстия.", a: "True"),
        Question(q: "Французский поцелуй придумали во Франции.", a: "False"),
        Question(q: "Существует металл, кипящий от соприкосновения с ладонью.", a: "False"),
        Question(q: "Вода при стоке из ванны всегда закручивается против часовой стрелки в Северном полушарии и по часовой в Южном.", a: "False"),
        Question(q: "Человек – единственное существо, способное спать на спине.", a: "False"),
        Question(q: "Из-за инфляции доллар 1925 года соответствует примерно 100 современным долларам.", a: "False"),
        Question(q: "Первые танки так медленно двигались по полю боя, что их мог обогнать неспешно идущий человек.", a: "True"),
        Question(q: "Вечная мерзлота занимает почти треть территории России.", a: "False"),
        Question(q: "Существует рыба, которая умеет передвигаться по суше и даже прыгать по деревьям.", a: "True"),
        Question(q: "Носители языка сильбо гомера общаются свистом.", a: "True"),
        Question(q: "Нашей Вселенной примерно 13,8 млрд лет.", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}


