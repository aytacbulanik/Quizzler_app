//
//  ViewController.swift
//  Quizzler_app
//
//  Created by AYTAÇ BULANIK on 18.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBarOut: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choiceAButtonOut: UIButton!
    @IBOutlet weak var choiceBButtonOut: UIButton!
    @IBOutlet weak var choiceCButtonOut: UIButton!
    
    var questionObject = QuestionBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        questionObject.questionNumber += 1
        updateQuestion()
        
    }
    
    func updateQuestion() {
        questionLabel.text = questionObject.newQuestion().q
        choiceAButtonOut.setTitle(questionObject.firstAnswer(), for: .normal)
        choiceBButtonOut.setTitle(questionObject.secondAnswer(), for: .normal)
        choiceCButtonOut.setTitle(questionObject.thirthAnswer(), for: .normal)
    }
    

}

