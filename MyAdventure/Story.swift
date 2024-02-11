//
//  Story.swift
//  MyAdventure
//
//  Created by user249277 on 2/10/24.
//

import Foundation
struct StoryLogic {
    
    let stories = [
        Story(
            title: "You are trying to figure out what video game to play. You have 2 options. Doom or Fortnite?",
            choice1: "Doom", choice1Destination: 2,
            choice2: "Fortnite", choice2Destination: 1
        ),
        Story(
            title: "You contemplate playing with your friends or going solo. Which will it be?",
            choice1: "Play with friends", choice1Destination: 5,
            choice2: "Play solo", choice2Destination: 3
        ),
        Story(
            title: "At startup, you are asked what type of graphics setting you want. What do you choose?",
            choice1: "Good Quality & 60 FPS", choice1Destination: 6,
            choice2: "Fantastic Quality & 120 FPS", choice2Destination: 4
        ),
        Story(
            title: "Your brother comes in and explains why fornite it the worst game of this genration and why you shouldn't play it anymore.",
            choice1: "Agreed", choice1Destination: 0,
            choice2: "Agreed", choice2Destination: 0
        ),
        Story(
            title: "You forgot that your PC sucks and it catches on fire.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
            
        ),
        Story(
            title: "Your mom gets mad & yells at you for being too loud. Your friends make fun of you for still living in your moms basement.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0

        ),
        Story(
            title: "You have a great time playing Doom.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
        
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        } else {
            storyNumber = stories[storyNumber].choice2Destination
        }
        
    }
    
    func storyTitle() -> String {
        
        return stories[storyNumber].title
        
    }
    
    func choiceTitle1() -> String {
        
        return stories[storyNumber].choice1
        
    }
    
    func choiceTitle2() -> String {
        
        return stories[storyNumber].choice2
        
    }
    
}
