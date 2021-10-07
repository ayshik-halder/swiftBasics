import UIKit


class xmasPresent {
    
    func surprise() -> Int {
        
        return Int.random(in: 1...10)
    }
}

let present:xmasPresent? = xmasPresent()

//check the optional to see if it contains an object

if present != nil{
    //it contains an object
    //call surprise function
    print(present!.surprise())
    
}

//optional binding

if let actualPresent = present {
    print(actualPresent.surprise())
}

//optional chaining :
//checks if present? has an object.
//if true then surprise() gets executed else nothing happens

present?.surprise()
