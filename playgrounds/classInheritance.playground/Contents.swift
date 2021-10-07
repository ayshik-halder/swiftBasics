import UIKit

//parent
class Person{
    var name = ""
}
//child
class Employee: Person{
    
    var salary = 0
    var role = ""
    
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
//employee
var e: Employee = Employee()
e.name = "Mrs. Dolon"
e.salary = 5000
e.role = "DataBase Admin"

e.display()
e.doWork()
print("\n")

//manager
var m : Manager = Manager()
m.name = "Mr. Ayshik"
m.salary = 50000
m.role = "Manager IT"

m.teamSize = 10
m.display()
m.doWork()
m.firePeople()

