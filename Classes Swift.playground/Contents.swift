
//let student1 = (name: "Alex", age:20)
//let student2 = (name: "Bob", age:22)
//
//student1.name
//student1.name
//
//let student3 = (nam:"Sam", ag:23)
//
//student3.nam

import Foundation

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
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + " instead of " + oldValue)
            firstName = firstName.capitalizedString
        }
    }
    
    var lastName : String {
        didSet {
            lastName = lastName.capitalizedString
        }
    }
    
    var fullName : String {
        get {
           return firstName + " " + lastName
        }
        set {
            print("fullName wants to be set to " + newValue)
            
            let words = newValue.componentsSeparatedByString(" ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
}

var stud1 = Stud(firstName: "Alex", lastName: "someLastName")
stud1.firstName = "ice"
stud1.lastName = "last"
stud1.fullName = "name lastName"
stud1.fullName


let MaxNameLength = 2



class Human {
    var name : String {
        didSet {
            if name.characters.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife = "This is a story of my entire life..."
    
//    static let maxAge = 100
    
    class var maxAge : Int {
        return 100
    }
    var age : Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

enum Direction {
    
    static let enumDescription = "Directions in the game"
    
    case Left
    case Right
    case Top
    case Bottom
    
    var isVertical : Bool {
        return self == .Top || self == .Bottom
    }
 
    var isHorizonatl : Bool {
        return !isVertical
    }
}

let d = Direction.Right

d.isVertical
d.isHorizonatl


Direction.enumDescription

struct Cat {
    var name : String
    static let maxAge = 20
    static var totalCats = 0
    var age : Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        Cat.totalCats += 1
    }
}


let human = Human(name: "Peter", age: 40)

human.name = "ttttttttt"
human.storyOfMyLife
human


let cat1 = Cat(name: "Whiten1", age: 10)
let cat2 = Cat(name: "Whiten2", age: 11)
let cat3 = Cat(name: "Whiten3", age: 12)


Cat.totalCats

//methodsmark

struct Point {
    var x : Int
    var y : Int
    
    mutating func moveByXandY(x: Int, y: Int) {
        self.x += x
        self.y += y
    }
//    mutating func moveByX(x: Int, andY y: Int) {
//        self = Point(x: self.x + x, y: self.y + y)
//    }
    
}

func move(point: Point, byX x: Int, byY y: Int) -> Point {
    var a = point
    a.x += x
    a.y += y
    return point
}

var p = Point(x: 1, y: 1)

//move(p, byX: 2, byY: 4)

//p.moveByX(2, andY: 4)


p.moveByXandY(2, y: 4)

enum Color {
    
    static func numberOfElements() -> Int {
        self.printColor()
        return 2
    }
    
    case White
    case Black
    
    mutating func invert() -> Color{
        if self == White {
            self = Black
        } else {
            self = White
        }
//        self = self == White ? Black : White
        return self
    }
    func printColor() {
        if self == White {
            print("White")
        } else {
            print("Black")
        }
    }
    
    static func printColor() {
        print("Enum")
    }
}
var c = Color.White

c.printColor()

c.invert().printColor()

c.invert().printColor()

Color.numberOfElements()




