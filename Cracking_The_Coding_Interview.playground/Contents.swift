//: Playground - noun: a place where people can play

import UIKit

// Arrays and Strings
// Implement an algorithm to determine if a string has all unique characters.  What if you cannot use additional data structure

// Given two strings, write a method to decide if one is a permutation of the other
func permutation(str1: String, str2: String) {
    var mySet = Set<Character>()
    for char in str1.lowercased() {
        mySet.insert(char)
    }
    
    for char in str2.lowercased() {
        if mySet.contains(char) {
            mySet.remove(char)
        }
    }
    
    if mySet.count == 0 {
        print("String 1 is a permutation of string 2")
    } else {
        print("String 1 is not a permutation of string 2")
    }
}

permutation(str1: "abc", str2: "aec")

// Write a method to replace all spaces in a string with '%20'.  You may assume that the string has sufficient space at teh end to hold
// the additional characters, and that you are given the "true" length of the sting.

// Given a string, write a function to check if it is a permuation of a palindrome.
func palindromePermution(str: String) {
    var mySet = Set<Character>()
    for char in str.lowercased() {
        if mySet.contains(char) {
            mySet.remove(char)
        } else {
            mySet.insert(char)
        }
    }
    
    if mySet.count <= 1 {
        print("String is a palindrome permutation")
    } else {
        print("String is not a palindrome permutation")
    }
}

palindromePermution(str: "Racecar")


