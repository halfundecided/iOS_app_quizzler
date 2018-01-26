//
//  ViewController.swift
//  Quizzler
//
//  Created by Mijeong Ban on 25/08/2015.
//

import UIKit

class ViewController: UIViewController {
    
    //The UI Elements from the storyboard
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    //instance variables here
    
    //This gets called when the UIViewController is loaded into memory when the app starts
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //This gets called when the systtem is low on memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //This action gets called when either the true or false button is pressed
    @IBAction func answerPressed(_ sender: AnyObject) {
  
    }
    
     
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        
    }
    
    
    func startOver() {
       
    }
    

    
}
