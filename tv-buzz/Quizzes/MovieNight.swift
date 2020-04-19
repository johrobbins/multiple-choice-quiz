//
//  Created by Joh Robbins on 10/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

struct MovieNight {
    enum Movie: String {
        case JohnWick = "John Wick"
        case BreakfastAtTiffanys = "Breakfast at Tiffany's"
        case Avatar = "Avatar"
        case TheShining = "The Shining"
        case TheShawshankRedemption = "The Shawshank Redemption"
        case MontyPythonAndTheHolyGrail = "Monty Python and the Holy Grail"
    }

    var quiz = Quiz(
        description: "What movie should you watch tonight?",
        questions: [
            Question(text: "What movie genre do you like to watch?",
             answers: [
                Answer(text: "Action", type: Movie.JohnWick.rawValue),
                Answer(text: "Romance", type: Movie.BreakfastAtTiffanys.rawValue),
                Answer(text: "Science Fiction", type: Movie.Avatar.rawValue),
                Answer(text: "Horror", type: Movie.TheShining.rawValue),
                Answer(text: "Drama", type: Movie.TheShawshankRedemption.rawValue),
                Answer(text: "Comedy", type: Movie.MontyPythonAndTheHolyGrail.rawValue)
             ]),
            Question(text: "Which actor do you like more?",
            answers: [
                Answer(text: "Keanu Reeves", type: Movie.JohnWick.rawValue),
                Answer(text: "Audrey Hepburn", type: Movie.BreakfastAtTiffanys.rawValue),
                Answer(text: "Sigourney Weaver", type: Movie.Avatar.rawValue),
                Answer(text: "Jack Nicholson", type: Movie.TheShining.rawValue),
                Answer(text: "Morgan Freeman", type: Movie.TheShawshankRedemption.rawValue),
                Answer(text: "John Cleese", type: Movie.MontyPythonAndTheHolyGrail.rawValue)
            ]),
            Question(text: "What decade do you prefer?",
            answers: [
                Answer(text: "1960s", type: Movie.BreakfastAtTiffanys.rawValue),
                Answer(text: "1970s", type: Movie.MontyPythonAndTheHolyGrail.rawValue),
                Answer(text: "1980s", type: Movie.TheShining.rawValue),
                Answer(text: "1990s", type: Movie.TheShawshankRedemption.rawValue),
                Answer(text: "2000s", type: Movie.Avatar.rawValue),
                Answer(text: "2010s", type: Movie.JohnWick.rawValue),
            ]),
            Question(text: "How long is your attention span?",
            answers: [
                Answer(text: "Very Short", type: Movie.MontyPythonAndTheHolyGrail.rawValue),
                Answer(text: "Short", type: Movie.JohnWick.rawValue),
                Answer(text: "Medium", type: Movie.BreakfastAtTiffanys.rawValue),
                Answer(text: "Long", type: Movie.TheShawshankRedemption.rawValue),
                Answer(text: "Very Long", type: Movie.TheShining.rawValue),
                Answer(text: "Unlimited", type: Movie.Avatar.rawValue)
            ])],
        results: [
            Result(
                name: Movie.JohnWick.rawValue,
                imageID: "JohnWick",
                description: "An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him."),
            Result(
                name: Movie.BreakfastAtTiffanys.rawValue,
                imageID: "BreakfastAtTiffanys",
                description: "A young New York socialite becomes interested in a young man who has moved into her apartment building, but her past threatens to get in the way."),
            Result(
                name: Movie.Avatar.rawValue,
                imageID: "Avatar",
                description: "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home."),
            Result(
                name: Movie.TheShining.rawValue,
                imageID: "TheShining",
                description: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future."),
            Result(
                name: Movie.TheShawshankRedemption.rawValue,
                imageID: "TheShawshankRedemption",
                description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency."),
            Result(
                name: Movie.MontyPythonAndTheHolyGrail.rawValue,
                imageID: "MontyPythonAndTheHolyGrail",
                description: "King Arthur (Graham Chapman) and his Knights of the Round Table embark on a surreal, low-budget search for the Holy Grail, encountering many, very silly obstacles."),
        ]
    )
}
