//
//  scoreViewController.swift
//  Quiz Me Up
//
//  Created by Praval Gautam on 12/01/23.
//

import UIKit

class scoreViewController: UIViewController {
    var scoreValue: Int?
    @IBOutlet var scoreLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor.systemRed

        // Do any additional setup after loading the view.
        scoreLabel.text = "\(String(describing: scoreValue))"
    }
    

  
}
