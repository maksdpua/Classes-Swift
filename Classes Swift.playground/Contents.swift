
//let student1 = (name: "Alex", age:20)
//let student2 = (name: "Bob", age:22)
//
//student1.name
//student1.name
//
//let student3 = (nam:"Sam", ag:23)
//
//student3.nam

class Student {
    var name : String
    var age : Int
    
    init() {
        name = "no name"
        age = 20
    }
    init(_name: String, _age:Int) {
        self.name = _name
        self.age = _age
    }
}

let student1 = Student(_name: "Bob", _age: 18)

//student1.name = "Alex"
//student1.age = 21
print(student1.name)
print(student1.age)

