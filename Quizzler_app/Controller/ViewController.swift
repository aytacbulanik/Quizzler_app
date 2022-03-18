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
        questionLabel.text = questionObject.newQuestion().q
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        questionObject.questionNumber += 1
        questionLabel.text = questionObject.newQuestion().q
    }
    
    
    

}

