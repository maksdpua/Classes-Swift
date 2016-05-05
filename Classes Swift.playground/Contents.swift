
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

struct StudentStruct {
    
    var name : String
    var age: Int
    
}

let stClass1 = Student(_name: "Bob", _age: 18)



//student1.name = "Alex"
//student1.age = 21
stClass1.name
stClass1.age

let stClass2 = stClass1

stClass2.age = 11
stClass2.name = "AAAA"

stClass2.name
stClass1.age

stClass1.age
stClass1.name

var stStruct1 = StudentStruct(name: "A", age: 20)
//stStruct.name = "A2"
//stStruct.age = 25


var stStruct2 = stStruct1

stStruct2.name
stStruct2.age

stStruct2.name = "Jay"
stStruct2.age = 23

stStruct2.name
stStruct2.age

func addOneYear(student: Student) {
    student.age += 1
}

func addOneYear(inout student: StudentStruct) {
    student.age += 1
}

stStruct1.age
addOneYear(&stStruct1)
stStruct1.age

stClass1.age
addOneYear(stClass1)
stClass1.age

var arrayStructs = [stStruct1]
arrayStructs[0]
arrayStructs[0].age = 50
stStruct1.age

stClass1.age
var arrayClasses = [stClass1]
arrayClasses[0]
arrayClasses[0].age = 50
arrayClasses[0]
stClass1.age
stClass1.name


struct Stud {
    var firstName : String {
        willSet(newFirstName) {
            print("will set " + newFirstName + " instead of " + firstName)
        }
        didSet(oldFirstName) {
            print("did set " + firstName + " instead of " + oldFirstName)
        }
    }
}

var stud1 = Stud(firstName: "Alex")
stud1.firstName = "Bob"




