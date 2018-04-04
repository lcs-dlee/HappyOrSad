//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Make sure input was given (creat a string from the string?)
guard let input = rawInput else {
    //Error
    exit(9)
}

// Print out the input provided
print("You said:")
print(rawInput) // optional string
print(input) // non-optional

// number of happy and sad
var numberHappy = 0
var numberSad = 0

// Process - inspect each character
for individualCharacter in input {
 
    // Debug
    print(individualCharacter)
    
    
    //Categorize the character
    if individualCharacter == "😃" || individualCharacter == "☺️" || individualCharacter == "🙂" || individualCharacter == "😄" {
        // Track a happy
        numberHappy += 1
    } else if individualCharacter == "☹️" || individualCharacter == "🙁" || individualCharacter == "😕" || individualCharacter == "😔" {
    // Track sad
        numberSad += 1
    }
}

if numberHappy > numberSad {
    print("Happy")
} else if numberSad > numberHappy {
    print("sad")
} else if numberHappy == numberSad {
    print("unsure")
}


// Output
// Tell the user "happy", "sad", or "unsure" based on counts above
