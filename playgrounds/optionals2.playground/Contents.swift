import UIKit

var greeting = "Hello, playground"

var a:Int? = nil

//b can store a String or nil(Optional.none) but it is wrapped
var b:String?
//c can store a String or nil(Optional.none) but it is already unwrapped
var c:String!

class xmasPresent{
    
    func surprise() -> Int {
        
        return Int.random(in: 1...10)
    }
}

var newPresent1: xmasPresent? = Optional.none

var newPresent2: xmasPresent! = Optional.none

//performing optional chaining

newPresent2.surprise()
 

