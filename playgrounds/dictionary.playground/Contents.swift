import UIKit

//declaring empty dictionary

var myDictionary = [String:String]()

//Assigning data to Dictionary

myDictionary["BCA 806"] = "Ayshik"
myDictionary["BCA 807"] = "Dolon"
myDictionary["BCA 805"] = "Arpan"
//also Dictionary is a optional type

//retrieving a value as optional

//print(myDictionary["BCA 806"])

//optional binding a key

let myRoll = myDictionary["BCA 806"]
  
//Replacing value for a key

myDictionary["BCA 806"] = "Ayshik Halder"

//Remove a value for a key

myDictionary["BCA 807"] = nil

//there is no order for a dictionary(non sequential type)
//But we can loop through it

for (key,value)  in myDictionary {
    
    //Do stuff for each item of the dictionary
    //print(key)
    
    print("\(key) is roll number of \(value)")
}
