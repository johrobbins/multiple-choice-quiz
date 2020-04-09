//
//  QuestionData.swift
//  multiple-choice-quiz
//
//  Created by Joh Robbins on 7/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

import Foundation

struct Quiz {
    var description: String
    var questions: [Question]
}

struct Question {
    var text: String
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: Any
}
