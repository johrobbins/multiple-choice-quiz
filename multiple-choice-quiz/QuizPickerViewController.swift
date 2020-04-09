//
//  ViewController.swift
//  multiple-choice-quiz
//
//  Created by Joh Robbins on 7/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

import UIKit

class QuizPickerViewController: UIViewController {
    @IBOutlet private var quizStackView: UIStackView!

    private let quizzes = [GameOfThronesQuiz().quiz]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Add each quiz to the stack view
        for (index, quiz) in quizzes.enumerated() {
            quizStackView.addArrangedSubview(createQuizView(quizDescription: quiz.description, quizID: index))
        }
    }

    private func createQuizView(quizDescription: String, quizID: Int) -> UIStackView {
        let titleLabel = UILabel()
        titleLabel.text = quizDescription
        titleLabel.font = UIFont(name: "Georgia", size: 28)
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        titleLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        let startButton = UIButton()
        startButton.setTitle("Start", for: .normal)
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        startButton.setTitleColor(UIColor.darkGray, for: .normal)
        startButton.setBackgroundImage(UIImage(named: "button-outline"), for: .normal)
        startButton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        startButton.tag = quizID
        startButton.widthAnchor.constraint(equalToConstant: 175).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        startButton.translatesAutoresizingMaskIntoConstraints = false

        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 16.0
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(startButton)

        return stackView
    }

    @objc func buttonTapped(sender : UIButton) {
        performSegue(withIdentifier: "StartQuiz", sender: sender.tag)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let quizID = sender as? Int else {
            return
        }

        if segue.identifier == "StartQuiz" {
            if let navController = segue.destination as? UINavigationController {
                if let questionViewController = navController.topViewController as? QuestionViewController {
                    questionViewController.questions = quizzes[quizID].questions
                }
            }
        }
    }
}
