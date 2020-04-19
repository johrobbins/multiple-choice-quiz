//
//  Created by Joh Robbins on 7/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

struct Quiz {
    var description: String
    var questions: [Question]
    var results: [Result]
}

struct Question {
    var text: String
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: String
}

struct Result {
    var name: String
    var imageID: String
    var description: String
}
