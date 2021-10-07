import UIKit

var greeting = "Hello, playground"

func add() {
    let a = 4
    let b = 5
    let c = a+b
    print(c)
}

 add()

//return

func addReturn() -> Int {
    let a = 10
    let b = 5
    let c = a+b
    return c
}
let z1 = addReturn()
print(z1)

//param func
//arg is optional
func add2(num1:Int, num2:Int) -> Int {
    let a = num1
    let b = num2
    let c = a+b
    return c
}
let z2 = add2(num1: 5, num2: 10)
print(z2)

//param func
//removing any func call param name using _
func add3( _ num1:Int, _ num2:Int) -> Int {
    let a = num1
    let b = num2
    let c = a+b
    return c
}
let z3 = add3(5, 2)
print(z3)




