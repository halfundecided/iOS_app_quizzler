//
//  Question.swift
//  Quizzler
//
//  Created by Mijeong Ban on 1/26/18.
//

import Foundation

// Class for every single question and answer
// Skeleton
class Question {
    
    // Properties of the class
    let questionText : String
    let answer : Bool
    
    // Events
    // initialization method
    init(text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
    
    
}

/*
// Create object
class myOtherClass {
    let question = Question(text: "what", correctAnswer: true)
    let question2 = Question(text: "what2", correctAnswer: false)
}
*/
