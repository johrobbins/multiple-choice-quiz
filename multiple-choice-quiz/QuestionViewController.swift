//
//  QuestionViewController.swift
//  multiple-choice-quiz
//
//  Created by Joh Robbins on 7/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet private var questionLabel: UILabel!
    @IBOutlet private var answerButton1: UIButton!
    @IBOutlet private var answerButton2: UIButton!
    @IBOutlet private var answerButton3: UIButton!
    @IBOutlet private var answerButton4: UIButton!

    public var questions = [Question]()

    override func viewDidLoad() {
        super.viewDidLoad()
        //updateUI()
        // Do any additional setup after loading the view.
        answerButton1.setTitle(questions[0].answers[1].text, for: .normal)
    }

    func updateUI() {
        let currentQuestion = questions[0]
        questionLabel.text = currentQuestion.text
        updateQuestionAnswers(using: currentQuestion.answers)
    }

    func updateQuestionAnswers(using answers: [Answer]) {
        answerButton1.setTitle(answers[0].text, for: .normal)
        answerButton2.setTitle(answers[1].text, for: .normal)
        answerButton3.setTitle(answers[2].text, for: .normal)
        answerButton4.setTitle(answers[3].text, for: .normal)
    }

//    var questions: [Question] = [
//        Question(text: "What temperature do you prefer most?",
//            answers: [
//                Answer(text: "Tropical"),
//                Answer(text: "Temperate"),
//                Answer(text: "Cold"),
//                Answer(text: "Dry")
//        ])
//    ]

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
