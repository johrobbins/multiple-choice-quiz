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
    @IBOutlet var answerButtons: Array<UIButton>!
    @IBOutlet private var quizProgressView: UIProgressView!

    public var questions = [Question]()

    private var questionIndex = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        questions.shuffle()
        updateUI()
    }

    func updateUI() {
        navigationItem.title = "Question #\(questionIndex + 1)"

        let currentQuestion = questions[questionIndex]
        var currentAnswers = currentQuestion.answers
        let quizProgress = Float(questionIndex) / Float(questions.count)

        questionLabel.text = currentQuestion.text

        currentAnswers.shuffle()
        for(index, button) in answerButtons.enumerated() {
            if index < currentAnswers.count {
                button.setTitle(currentAnswers[index].text, for: .normal)
                button.isHidden = false
            } else {
                button.isHidden = true
            }
        }

        quizProgressView.setProgress(quizProgress, animated: true)
    }

    @IBAction func answerButtonTapped(_ sender: UIButton) {
        nextQuestion()
    }

    func nextQuestion() {
        questionIndex += 1

        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "ShowResults", sender: nil)
        }
    }
}
