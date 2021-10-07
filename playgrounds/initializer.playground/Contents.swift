import UIKit

//parent
class Person{
    var name = ""
    init() {
        name = "Anonymous"
        // custom init code
    }
    //param init
    init(_ name:String) {
        self.name = name    //self refers to current property
    }
}
//child
class Employee: Person{
    
    var salary = 0
    var role = ""
    
    override init(_ name:String) {
        
        //calling init(_ name:String) of the Person class
        super.init(name)
        
        self.role = "Reserve"
    }
    
    func display() {
        
        print("Basic Details->>>\nName: \(name) \nSalary: \(salary) \nRole: \(role)")
    }
    
    func doWork() {
        
        print("\(name) is doing Work and getting paid \(salary)")
    }
}
//grandChild
class Manager: Employee{
    var teamSize = 0
    
    override func display() {
        print("Basic Details->>>\nName: \(name) \nSalary: \(salary) \nRole: \(role) \nTeamsize: \(teamSize)")
    }
    
    override func doWork() {    //overriding
        super.doWork()          //using parent func
        salary += 100*teamSize
        print("\(name) is managing \(teamSize) people and getting paid \(salary)")
    }
     
    func firePeople(){
        teamSize-=1
        print("Firing People. New Team Size \(teamSize)")
    }
}

let myPerson: Person = Person("Mr. Ayshik")
print(myPerson.name)

let myEmployee: Employee = Employee("Mrs. Dolon")
print(myEmployee.name)
print(myEmployee.role)

