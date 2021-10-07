import UIKit

var greeting = "Hello, playground"

let chr:String = "/"
var num1:Int = 5
var num2:Int = 5
var result:Double = 0.0

switch chr {
case "+" :
    result = Double(num1 + num2)
    print(result)
case "-" :
    result = Double(num1 - num2)
    print(result)
case "*" :
    result = Double(num1 * num2)
    print(result)
case "/" :
    result = Double(num1 / num2)
    print(result)
default:
    print("Wrong Choice")
}




