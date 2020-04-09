//
//  GameOfThronesQuiz.swift
//  multiple-choice-quiz
//
//  Created by Joh Robbins on 8/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

struct GameOfThrones {
    var quiz = Quiz(
        description: "Which Game of Thrones House are you?",
        questions: [
            Question(text: "What matters to you most?",
                     answers: [
                        Answer(text: "Family", type: House.Tully),
                        Answer(text: "Honor", type: House.Stark),
                        Answer(text: "Stability", type: House.Arryn),
                        Answer(text: "Love", type: House.Tyrell),
                         Answer(text: "Money", type: House.Lannister),
                         Answer(text: "Fame", type: House.Greyjoy)
                     ]),
            Question(text: "Which activity would you enjoy more?",
            answers: [
                Answer(text: "Swiming in the ocean", type: House.Greyjoy),
                Answer(text: "Playing in the snow", type: House.Stark),
                Answer(text: "Climbing mountains", type: House.Arryn),
                Answer(text: "Fishing in a river", type: House.Tully),
                Answer(text: "Sunbaking in the desert", type: House.Martell),
                Answer(text: "Exploring cities streets", type: House.Lannister)
            ]),
    ])

    enum House {
        case Arryn
        //case Baratheon
        case Greyjoy
        case Lannister
        case Martell
        case Stark
        //case Targaryen
        case Tully
        case Tyrell
    }
}
