//
//  ViewController.swift
//  Quiz2396
//
//  Created by Alan Marin De Luna on 6/12/18.
//  Copyright © 2018 Alan Marin De Luna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //life cycle function that changes the ??? to the first question in the array of strings of questions
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    // outlet variable variableName: objectType
    // IBOutlet - Interface Builder Outlet, we are going to be connect these outlets to label by using IB.
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        
        //if currentQuestion is the last question in the array of Questions, then reset currentQuestionIndex to 0
        if(currentQuestionIndex == questions.count) {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

}
