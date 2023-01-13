//
//  ViewController.swift
//  Quiz Me Up
//
//  Created by Praval Gautam on 12/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        newQuestion()
        
        
    }
    
    
    let questionArr = [    ["Q1-> The capital of France is Berlin.", "False"],
                           ["Q2-> The Great Wall of China is visible from space.", "False"],
                           ["Q3-> The largest ocean in the world is the Indian Ocean.", "False"],
                           ["Q4-> The Mona Lisa is a painting by Michelangelo.", "False"],
                           ["Q5-> The Statue of Liberty is located in New York City.", "True"],
                           ["Q6-> The Earth is the third planet from the sun.", "True"],
                           ["Q7->The currency of Japan is the Euro.", "False"],
                           ["Q8-> The Berlin Wall was built in the 16th century.", "False"],
                           ["Q9-> The tallest mammal in the world is the elephant.", "True"],
                           ["Q10-> The capital of Australia is Sydney.", "False"],
                           ["Q11-> The Amazon rainforest is located in Africa.", "False"],
                           ["Q12-> The United States has 50 states.", "True"],
                           ["Q13-> The Mona Lisa is a portrait of a man.", "False"],
                           ["Q14-> The capital of Brazil is Rio de Janeiro.", "False"],
                           ["Q15-> The largest desert in the world is the Antarctic Desert.", "False"],
                           ["Q16-> The Mona Lisa is a painting by Leonardo da Vinci.", "True"],
                           ["Q17-> The highest mountain in the world is Mount Everest.", "True"],
                           ["Q18-> The smallest country in the world is Vatican City.", "True"],
                           ["Q19-> The longest river in the world is the Nile.", "True"],
                           ["Q20-> The famous painting The Scream is by Salvador Dali.", "False"],
                           ["Q21-> The Great Barrier Reef is located in the Arctic Ocean.", "False"],
                           ["Q22-> The largest planet in the solar system is Mars.", "False"],
                           ["Q23-> The currency of Canada is the Canadian dollar.", "True"],
                           ["Q24-> The Great Pyramid of Giza is located in Egypt.", "True"]
                           
    ]
    
    
    
    func newQuestion(){
        questionLabel.text = questionArr[questionNumber][0]                      //   showing question on screen
        
    }
    
   
    
    
    var score = 0
    @IBAction func buttonPressed(_ sender: UIButton) {
        newQuestion()
        if questionNumber == 23 {
            return
        }
        
      else if(questionNumber  <= questionArr.count){
            questionNumber+=1
         
     }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    
        var userAnswer = sender.titleLabel?.text
        var actualAnswer = questionArr[questionNumber-1][1]

        if (userAnswer == actualAnswer){
            score+=1
        }
        print(actualAnswer)
        print(userAnswer)
  
        print(score)
    }
    
    
    

        


    @IBAction func submitBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goToScore" , sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToScore"{
            let destinationVC = segue.destination as! scoreViewController
            destinationVC.scoreValue = score
        }
    }
    
    
    
    

}

