import UIKit

var myArray:[String] = ["Dog","Cat","Owl"]

//for counter in 0...myArray.count-1 {
//    myArray[counter] = "My " + myArray[counter]
//    print(myArray[counter])
//}

//easier alternative
//for item in myArray {
//    print(item)
//}

//how to declare an empty array

var emptyArray:[String] = []
var emptyArray2 = [String]()

//add items at a particular index using insert and pushes the next items by 1 index
myArray.insert("frog", at: 0)

//appending
myArray.append("Panda")
myArray += ["Turtle", "Bear"]

for item in myArray {
    print(item)
}
print("\n")
//removing
myArray.remove(at: 0)
for item in myArray {
    print(item)
}

//search Array
let address:Int? = myArray.firstIndex(of: "Owl")
print(address!) 
