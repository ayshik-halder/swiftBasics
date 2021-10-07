import UIKit

class Employee {
    
    var name = ""
    var salary = 0
    var role = ""
    
    func doWork() {
        salary += 100
        print("\(name) is doing Work and getting paid \(salary)")
    }
}

let c:Employee = Employee()
c.name = "Mr. Halder"
c.role = "Manager"
c.salary = 10000

c.doWork()

let d:Employee = Employee()
d.name = "Mr. Ghosh"
d.role = "Sales"
d.salary = 1000

d.doWork()



