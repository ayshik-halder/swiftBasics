import UIKit

class Person {
     
    var name:String
    var netWorth:Int?
    var gender:String!
    
    //designated initializer because it makes sure all properties are initialised
    init(){
        name = "Anonymous"
    }
    
    convenience init(_ gender:String, _ netWorth:Int){
        //calling the designated initialiser so that the object is ready to go
        self.init()
        //set any other properties or custom code to initialize for this scenario
        self.gender = gender
        self.netWorth = netWorth
    }
}
//creating a new Person obj
let a = Person()
print(a.name)

//creating a new Rich person obj
let b = Person("Male", 9992323)
print(b.netWorth)
