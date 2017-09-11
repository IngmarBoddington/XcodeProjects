//: Playground - noun: a place where people can play

import UIKit

var str = "Hello";
let newString = str + " Dave!";

//Iterate over characters
for character in newString.characters {
    print(character);
}

//Create a string with manipulation methods
var newTypeString = NSString(string: newString);

//Substring
NSString(string: newTypeString.substring(from: 6)).substring(to: 4);

//Substring
newTypeString.substring(with: NSRange(location: 6, length: 4));

//Matching
if newTypeString.contains("Dave") {
    print("String contains Dave");
}

//Split into array
newTypeString.components(separatedBy: " ");

//Case
newTypeString.uppercased
newTypeString.lowercased

//Etc