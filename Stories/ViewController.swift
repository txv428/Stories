//
//  ViewController.swift
//  Stories
//
//  Created by Apple on 29/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(story: storyBrain.storyObject[0])
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let choiceMade = sender.currentTitle!
        let nextStory = storyBrain.nextStory(userChoice: choiceMade)
        updateUI(story: nextStory)
    }
    
    func updateUI(story: Story) {
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }
    
}


