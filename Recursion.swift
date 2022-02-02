// Copyright (c) 2022 Mel Aguoth All rights reserved.
//
// Created By: Mel Aguoth
// Date: February 2, 2022
// This produces a numeric pattern symmetric about n (a user-inputted integer)
// where each half before and after n is also symmetric around n-1.

// Import modules.
import Foundation

func numberPattern(funcInt: Int) {

  // Create and display the pattern with the user's integer.
  if funcInt == 1 {
    print(" \(funcInt)", terminator: "")
  } else {
    numberPattern(funcInt: funcInt - 1)
    if funcInt > 5 {
      print(" \(funcInt)")
    } else {
      print(" \(funcInt)", terminator: "")
    }
    numberPattern(funcInt: funcInt - 1)
  }
}

// Introduce the program.
print("This program displays a pattern using a user-inputted integer."
    + " The integer has to be between 1 and 15.")

// Get the user's integer.
print("Enter a positive integer:", terminator: " ")
let userString: String = readLine() ?? ""
let userInt: Int = Int(userString) ?? 0

// If the user's input isn't an integer, display an error to the user.
if Int(userString) == nil {
  print("\n" + "'\(userString)' isn't an integer. Please enter a proper integer.")

// If the user's number of discs isn't above 0, display an error to the user.
} else if userInt < 1 || userInt > 15 {
  print("\n" + "\(userInt) isn't between 1 and 15. Please try again.")
} else {

  // Call numberPattern.
  print("")
  numberPattern(funcInt: userInt)
  print("")
}
