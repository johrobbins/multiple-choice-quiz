//
//  Created by Joh Robbins on 10/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

struct GameOfThrones {
    enum House: String {
        case Arryn = "House Arryn"
        case Baratheon = "House Baratheon"
        case Greyjoy = "House Greyjoy"
        case Lannister = "House Lannister"
        case Martell = "House Martell"
        case Stark = "House Stark"
        case Targaryen = "House Targaryen"
        case Tyrell = "House Tyrell"
    }

    var quiz = Quiz(
        description: "Which Game of Thrones House are you?",
        questions: [
            Question(text: "What matters to you most?",
             answers: [
                Answer(text: "Vengeance", type: House.Targaryen.rawValue),
                Answer(text: "Honor", type: House.Stark.rawValue),
                Answer(text: "Stability", type: House.Arryn.rawValue),
                Answer(text: "Love", type: House.Tyrell.rawValue),
                Answer(text: "Money", type: House.Lannister.rawValue),
                Answer(text: "Fame", type: House.Greyjoy.rawValue)
             ]),
            Question(text: "Which activity would you enjoy more?",
            answers: [
                Answer(text: "Gardening", type: House.Tyrell.rawValue),
                Answer(text: "Sailing", type: House.Greyjoy.rawValue),
                Answer(text: "Sunbathing", type: House.Martell.rawValue),
                Answer(text: "Hang Gliding", type: House.Targaryen.rawValue),
                Answer(text: "Hiking", type: House.Arryn.rawValue),
                Answer(text: "Snowboarding", type: House.Stark.rawValue)
            ]),
            Question(text: "What type of character would you prefer to root for?",
            answers: [
                Answer(text: "Ignorant", type: House.Baratheon.rawValue),
                Answer(text: "Reckless", type: House.Martell.rawValue),
                Answer(text: "Romantic", type: House.Tyrell.rawValue),
                Answer(text: "Underdog", type: House.Targaryen.rawValue)
            ]),
            Question(text: "Which animal would you prefer as a pet?",
            answers: [
                Answer(text: "Deer", type: House.Baratheon.rawValue),
                Answer(text: "Lion", type: House.Lannister.rawValue),
                Answer(text: "Fish", type: House.Greyjoy.rawValue),
                Answer(text: "Wolf", type: House.Stark.rawValue)
            ]),
            Question(text: "Where would you like to live?",
            answers: [
                Answer(text: "Mountain Lodge", type: House.Arryn.rawValue),
                Answer(text: "Penthouse", type: House.Lannister.rawValue),
                Answer(text: "Log Cabin", type: House.Baratheon.rawValue),
                Answer(text: "Beach House", type: House.Martell.rawValue)
            ])],
        results: [
            Result(
                name: House.Arryn.rawValue,
                imageID: "Arryn",
                description: "House Arryn of the Eyrie is the principal noble house in the Vale of Arryn. Their main seat is the Eyrie, which is considered impregnable, sitting astride the Giant's Lance, the tallest mountain in the Vale. The Arryn sigil is a sky-blue falcon soaring upwards, outlined against a white moon on a sky-blue field, and their words are \"As High as Honor\"."),
            Result(
                name: House.Baratheon.rawValue,
                imageID: "Baratheon",
                description: "House Baratheon of Storm's End is the principal house in the stormlands, which they rule as Lords Paramount of the Stormlands. Their seat, Storm's End, is an ancient castle raised by the Storm Kings from the now-extinct House Durrandon. The Baratheon sigil is a crowned black stag on a field of gold, their words are \"Ours is the Fury\"."),
            Result(
                name: House.Greyjoy.rawValue,
                imageID: "Greyjoy",
                description: "House Greyjoy of Pyke rules over the Iron Islands, a harsh and bleak collection of forbidding islands off the west coast of Westeros, from the Seastone Chair in the castle of Pyke on the island of the same name. The head of the family is traditionally known as the Lord Reaper of Pyke. Their sigil is a golden kraken on a black field, and their house motto is \"We Do Not Sow\"."),
            Result(
                name: House.Lannister.rawValue,
                imageID: "Lannister",
                description: "House Lannister of Casterly Rock is the principal house of the westerlands. Their sigil is a golden lion on a field of crimson. Their official motto is \"Hear Me Roar!\" However, their unofficial motto, equally well known, is \"A Lannister always pays his debts\". Their gold mines have made the Lannisters the wealthiest of the Great Houses."),
            Result(
                name: House.Martell.rawValue,
                imageID: "Martell",
                description: "House Nymeros Martell of Sunspear, usually simply called House Martell, is the ruling house of Dorne. \"Nymeros\" is referring to the union of the Martells with the Rhoynish warrior queen Nymeria around 700 BC.When Nymeria wed Lord Mors Martell, the symbols were combined into a gold spear piercing a red sun on an orange field. Their words are \"Unbowed, Unbent, Unbroken\"."),
            Result(
                name: House.Stark.rawValue,
                imageID: "Stark",
                description: "House Stark of Winterfell is the principal noble house of the north, in days of old they ruled as Kings of Winter but since Aegon's Conquest they have been Wardens of the North and ruled as Lords of Winterfell. Their seat, Winterfell, is an ancient castle renowned for its strength. Their sigil is a grey direwolf and their motto a warning to others is \"Winter is Coming\"."),
            Result(
                name: House.Targaryen.rawValue,
                imageID: "Targaryen",
                description: "House Targaryen of Dragonstone is a noble family of Valyrian descent who once ruled the Seven Kingdoms of Westeros. The Targaryen sigil is a three-headed dragon breathing flames, red on black. The house words are \"Fire and Blood\". It eventually became the first royal house of the Seven Kingdoms."),
            Result(
                name: House.Tyrell.rawValue,
                imageID: "Tyrell",
                description: "House Tyrell of Highgarden is Lords Paramount of the Mander and the liege lords of the Reach. A large, wealthy house, its wealth is only surpassed by House Lannister, and the Tyrells can field the greatest armies. Highgarden is an ancient seat of rule and the heart of chivalry. Their sigil is a golden rose on a green field, and their words are \"Growing Strong\"."),
        ]
    )
}
