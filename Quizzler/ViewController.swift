//
//  ViewController.swift
//  Quizzler
//
//  Created by Mijeong Ban on 25/08/2015.
//

import UIKit

class ViewController: UIViewController {
    
    //initialization
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false //answer that user picked
    var questionNumber : Int = 0
    var score : Int = 0
    
    //The UI Elements from the storyboard
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    //instance variables here
    
    //This gets called when the UIViewController is loaded into memory when the app starts
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion() // since questionNumber is currently zero
    }

    //This gets called when the systtem is low on memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //This action gets called when either the true or false button is pressed
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        
        nextQuestion()
    }
    
     
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver() //in - self
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    //compare correct answer and picked answers
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct") //Third party library
            score += 1
        } else {
            ProgressHUD.showError("Wrong")
        }
    }
    func startOver() {
       questionNumber = 0
        nextQuestion()
    }
    

    
}
