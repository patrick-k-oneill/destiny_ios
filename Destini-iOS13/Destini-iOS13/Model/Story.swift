//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story    {
    let storyText: String
    let choiceA : String
    let choiceADestination : Int
    let choiceB : String
    let choiceBDestination: Int
    
    init(text: String, a: String, aDest: Int, b: String, bDest: Int)    {
        storyText = text
        choiceA = a
        choiceADestination = aDest
        choiceB = b
        choiceBDestination = bDest
    }
}
