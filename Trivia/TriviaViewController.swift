//
//  TriviaViewController.swift
//  Trivia
//
//  Created by 윤다영 on 3/12/24.
//

import UIKit

class ViewController: UIViewController {
    private var data: [Data] = [
        Data(questionNumber: "Question 1", questionDetail: "What color is the sky?", firstAnswer: "blue", secondAnswer: "red", thirdAnswer: "green"),
        Data(questionNumber: "Question 2", questionDetail: "WHat color is a banana", firstAnswer: "blue", secondAnswer: "yellow", thirdAnswer: "green"),
        Data(questionNumber: "what color is an apple?", questionDetail: "What color is the sky?", firstAnswer: "blue", secondAnswer: "red", thirdAnswer: "green "),
    ]

    private var questionSelected = 0

    @IBOutlet var questionNumber: UILabel!
    @IBOutlet var questionDetail: UILabel!
    @IBOutlet var firstAnswer: UIButton!
    @IBOutlet var secondAnswer: UIButton!
    @IBOutlet var thirdAnswer: UIButton!

    private func renderData(with data: Data) {
        questionNumber.text = data.questionNumber
        questionDetail.text = data.questionDetail
        firstAnswer.setTitle(data.firstAnswer, for: .normal)
        secondAnswer.setTitle(data.secondAnswer, for: .normal)
        thirdAnswer.setTitle(data.thirdAnswer, for: .normal)
    }

    @IBAction func answerClicked(_ sender: UIButton) {
        if questionSelected < data.count{
            questionSelected += 1
            renderData(with: data[questionSelected])
        }else {
            print("completed trivia")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
