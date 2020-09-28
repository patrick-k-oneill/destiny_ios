//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain   {
    
    let adventure = [
        
        Story(text: "You come upon a Gazebo", a: "Burn the Gazebo", aDest: 1, b: "\"Is it awake?\"", bDest: 2),
        //a-> 1   b->2
        Story(text: "As you approach with your torch, the Gazebo sprouts 8 legs--towering above you--prepared to attack!", a: "Dual-cast a Fireball!", aDest: 3, b: "Cast a shield spell and flee", bDest: 4),
        //a-> 3   b->4
        Story(text: "You hear a rumbling beneath the Gazebo's foundation.", a: "Enter the Gazebo", aDest: 5, b: "\"Is it awake?\"", bDest: 6),
        //a-> 5   b->6
        Story(text: "Your Fireball stuns the Gazebo.  It reels back, exposing its tender wooden underbelly.", a: "Cast another Fireball!", aDest: 8, b: "Check your iPhone notifications", bDest: 7),
        //a-> 8   b->7
        Story(text: "The Gazebo kicks up on its hind legs, sprinting after you. You notice its wooden underbelly is exposed.", a: "Turn to face your foe. \"FIREBALL!\"", aDest: 8, b: "Attempt to outrun it", bDest: 7),
        //a-> 8  b->7
        Story(text: "As you naively appproach, the Gazebo sprouts 8 legs--towering above you--prepared to attack!", a: "Dual-cast a Fireball!", aDest: 3, b: "Cast a shield spell and flee", bDest: 4),
        //a-> 3   b->4
        Story(text: "The Gazebo sprouts 8 legs--towering above you--prepared to attack!", a: "Scream and run", aDest: 4, b: "\"Is it awake?\"", bDest: 7),
        //a-> 4   b->7
        Story(text: "The Gazebo rears its legs and lunges--jaws wide--at you. The Gazebo consumes you whole, pureeing your flesh with its razor sharp Gazebo teeth.", a: "You Died", aDest: 7, b: "(Start Over)", bDest: 0),
        
        Story(text: "You stand upon the smoking embers of your vanquished Gazebo foe.  You let out a primal scream of victory!", a: "You Win!", aDest: 8, b: "(Start Over)", bDest: 0)
        
    ]
    
    func getAButtonText(index: Int) -> String   {
        return adventure[index].choiceA.description
    }
    
    func getBButtonText(index: Int) -> String   {
        return adventure[index].choiceB.description
    }
    
    func nextStory(index: Int, buttonText: String) -> Int   {
        if buttonText == adventure[index].choiceA.description   {
            return adventure[index].choiceADestination
        } else if buttonText == adventure[index].choiceB.description {
            return adventure[index].choiceBDestination
        } else {
            print("nextStory ERROR on story index \(index)")
            return 7
        }
    }
        
    
}
