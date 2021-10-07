import UIKit

//parent
class Person{
    var name = ""
    init(_ name:String){
        self.name = name
    }
}
//child
class Employee: Person{
    
    var salary = 0
    var role = ""
    
    override init( _ name:String) {
        super.init(name)
        role = "Reserves"
        
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
    var bonus:Int {
        return teamSize * 1000
    }
    
    init(_ name:String, _ team:Int) {
        super.init(name)
        teamSize = team
    }
    override func display() {
        print("Basic Details->>>\nName: \(name) \nSalary: \(salary) \nRole: \(role) \nTeamsize: \(teamSize) \nBonus: \(bonus)")
    }
    override func doWork() {    //overriding
        super.doWork()          //using parent func
        salary += self.bonus
        print("\(name) is managing \(teamSize) people and getting paid \(salary)")
    }
    func firePeople(){
        teamSize-=1
        print("Firing People. New Team Size \(teamSize)")
    }
}
//employee
let m = Manager("Mr. Ayshik", 10)

print(m.bonus)
