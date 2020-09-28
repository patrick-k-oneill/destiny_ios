//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceAButton: UIButton!
    @IBOutlet weak var choiceBButton: UIButton!
    
    var storyBrain = StoryBrain()
    var currentQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        currentQuestion = storyBrain.nextStory(index: currentQuestion, buttonText: sender.currentTitle!)
        updateUI()
    }
    
    
    func updateUI() {
        storyLabel.text = storyBrain.adventure[currentQuestion].storyText
        choiceAButton.setTitle(storyBrain.getAButtonText(index: currentQuestion), for: .normal)
        choiceBButton.setTitle(storyBrain.getBButtonText(index: currentQuestion), for: .normal)
    }
    
}

