//
//  MovieNight.swift
//  multiple-choice-quiz
//
//  Created by Joh Robbins on 10/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

struct MovieNight {
    var quiz = Quiz(
        description: "What movie should you watch tonight?",
        questions: [
            Question(text: "What movie genre do you like to watch?",
             answers: [
                Answer(text: "Action", type: House.JohnWick),
                Answer(text: "Romance", type: House.BreakfastAtTiffanys),
                Answer(text: "Science Fiction", type: House.Avatar),
                Answer(text: "Horror", type: House.TheShining),
                Answer(text: "Drama", type: House.TheShawshankRedemption),
                Answer(text: "Comedy", type: House.MontyPythonAndTheHolyGrail)
             ]),
            Question(text: "Which actor do you like more?",
            answers: [
                Answer(text: "Keanu Reeves", type: House.JohnWick),
                Answer(text: "Audrey Hepburn", type: House.BreakfastAtTiffanys),
                Answer(text: "Sigourney Weaver", type: House.Avatar),
                Answer(text: "Jack Nicholson", type: House.TheShining),
                Answer(text: "Morgan Freeman", type: House.TheShawshankRedemption),
                Answer(text: "John Cleese", type: House.MontyPythonAndTheHolyGrail)
            ]),
            Question(text: "What decade do you prefer?",
            answers: [
                Answer(text: "1960s", type: House.BreakfastAtTiffanys),
                Answer(text: "1970s", type: House.MontyPythonAndTheHolyGrail),
                Answer(text: "1980s", type: House.TheShining),
                Answer(text: "1990s", type: House.TheShawshankRedemption),
                Answer(text: "2000s", type: House.Avatar),
                Answer(text: "2010s", type: House.JohnWick),
            ]),
            Question(text: "How long is your attention span?",
            answers: [
                Answer(text: "Very Short", type: House.MontyPythonAndTheHolyGrail),
                Answer(text: "Short", type: House.JohnWick),
                Answer(text: "Medium", type: House.BreakfastAtTiffanys),
                Answer(text: "Long", type: House.TheShawshankRedemption),
                Answer(text: "Very Long", type: House.TheShining),
                Answer(text: "Unlimited", type: House.Avatar)
            ])
    ])

    enum House {
        case JohnWick
        case BreakfastAtTiffanys
        case Avatar
        case TheShining
        case TheShawshankRedemption
        case MontyPythonAndTheHolyGrail
    }
}
