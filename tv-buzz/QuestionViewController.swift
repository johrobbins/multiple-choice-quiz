//
//  Created by Joh Robbins on 7/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet private var questionLabel: UILabel!
    @IBOutlet private var answerButtons: Array<UIButton>!
    @IBOutlet private var quizProgressView: UIProgressView!

    public var questions = [Question]()
    public var results = [Result]()

    private var questionIndex = 0;
    private var currentAnswers: [Answer] = []
    private var answerChosen: [String: Int] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
        questions.shuffle()
        updateUI()
    }

    func updateUI() {
        navigationItem.title = "Question #\(questionIndex + 1)"

        questionLabel.text = questions[questionIndex].text

        currentAnswers = questions[questionIndex].answers
        currentAnswers.shuffle()
        for(index, button) in answerButtons.enumerated() {
            if index < currentAnswers.count {
                button.setTitle(currentAnswers[index].text, for: .normal)
                button.isHidden = false
            } else {
                button.isHidden = true
            }
        }

        let quizProgress = Float(questionIndex) / Float(questions.count)
        quizProgressView.setProgress(quizProgress, animated: true)
    }

    @IBAction func answerButtonTapped(_ sender: UIButton) {
        let resultID = currentAnswers[sender.tag].type
        answerChosen[resultID] = (answerChosen[resultID] ?? 0) + 1
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // find the answer with the most occurrence
        let answer = answerChosen.max { a, b in a.value < b.value }

        if segue.identifier == "ShowResults" {
            if let resultsViewController = segue.destination as? ResultsViewController {
                for result in results {
                    if result.name == answer?.key {
                        resultsViewController.result = result
                        return
                    }
                }
            }
        }
    }
}
