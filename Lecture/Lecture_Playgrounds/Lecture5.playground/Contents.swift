// Enums: create custom data types



//func calculate(firstParamter: Double, secondParameter: Double, usingOperator: String) -> Double{
//    switch (usingOperator){
//    case "+":
//        return firstParamter + secondParameter;
//    case "-":
//        return firstParamter - secondParameter;
//    case "*":
//        return firstParamter * secondParameter;
//    case "/":
//        return firstParamter / secondParameter;
//    default:
//        return -1.00
//    }
//}
//print(calculate(firstParamter: 10, secondParameter: 15, usingOperator: "g"))
//
//enum Operators {
//    case plus, minus, divide, multiply
//}
//
//func calculate(firstParamter: Double, secondParameter: Double, usingOperator: Operators) -> Double{
//    switch (usingOperator){
//    case .plus:
//        return firstParamter + secondParameter;
//    case .minus:
//        return firstParamter - secondParameter;
//    case .multiply:
//        return firstParamter * secondParameter;
//    case .divide:
//        return firstParamter / secondParameter;
//    }
//}
//print(calculate(firstParamter: 15, secondParameter: 10, usingOperator: .minus))

//improves switch statements

//raw values
enum Operators: String {
    case plus = "+"
    case minus = "-"
    case divide = "/"
    case multiply = "*"
}

func calculate(firstParameter: Double, secondParameter: Double, usingOperator: Operators) -> String{
    switch (usingOperator){
    case .plus:
        return "\(firstParameter) \(Operators.plus.rawValue) \(secondParameter) = \(firstParameter + secondParameter)";
    case .minus:
        return "\(firstParameter) \(Operators.minus.rawValue) \(secondParameter) = \(firstParameter - secondParameter)";
    case .multiply:
        return "\(firstParameter) \(Operators.multiply.rawValue) \(secondParameter) = \(firstParameter * secondParameter)";
    case .divide:
        return "\(firstParameter) \(Operators.divide.rawValue) \(secondParameter) = \(firstParameter / secondParameter)";
    }
}

print(calculate(firstParameter: 10, secondParameter: 15, usingOperator: Operators.multiply))
//associated values
//
//enum Actor {
//    case age(Int)
//    case fullName(String)
//    case netWorth(Double)
//}
//
//var leonardoDicaprioAge: Actor = .age(36)
//var ryanReynaldsName: Actor = .fullName("Ryan Reynolds")
//
//switch (ryanReynaldsName){
//case .age(let age):
//    print ("Actor's age: \(age)")
//case .fullName(let fullName):
//    print ("Actor's full name: \(fullName)")
//case .netWorth(let netWorth):
//    print ("Actor's net worth: \(netWorth)")
//}
//

//Structs: grouping properties under common logical structure


//can have methods

struct Athletes {
    var speed: Double
    var stamina: Double
    var name: String
    var sport: String
    
    func printStats() {
        if sport == "basketball" {
            print("Welcome to the court \(name), with a speed of \(speed) and a stamina of \(stamina)")
        }
        print("Welcome to the field \(name), with a speed of \(speed) and a stamina of \(stamina)")
    }
}

var michaelJordan = Athletes(speed: 30.0, stamina: 46, name: "Michael Jordan", sport: "Basketball")
var lionelMessi = Athletes(speed: 45, stamina: 42, name: "Lionel Messi", sport: "soccer")
//michaelJordan.printStats()
//lionelMessi.printStats()


//so what's different from classes? -> no inheritance; pass by value vs. pass by reference

// What is a value type?
/**
 -  keeps a unique copy of its data
 - example: struct or enum
 */

struct Actor {
    var age: Int
    var fullName: String
    var netWorth: Double

    func isRich() -> Bool{
        if netWorth > 1000000{
            return true

        }
        return false
    }
}
let actor1 = Actor(age: 51, fullName: "Brad Pitt", netWorth: 32000000.45)
//print ("\(actor1.fullName) is rich: \(actor1.isRich())")
//UIViewController // Screen

// What is a value type?
/**
 -  keeps a unique copy of its data
 - example: struct or enum
 */
var actor2 = actor1
actor2.age = 31
print(actor1.age)
print(actor2.age)

class ActorClass {
    var age: Int = 51
}

let actor3 = ActorClass()
var actor4 = actor3 //Pass by reference (still one instance only)
let actor5 = ActorClass()
actor4.age = 30
print(actor3.age)
print(actor4.age)

// Swifty concept - extensions
/**
 - allow you to add new functionality to existing class, structs, enumerations, or protocols
 NOTE: CAN'T ADD VARIABLES; can't have stored properties
 */

extension Actor {
    func printName() {
        print("Hi, my name is \(fullName)")
    }
}

let actor10 = Actor(age: 54, fullName: "Brad Pitt", netWorth: 3000000)

// Closures
/**
 {(parameters) -> returnType in
    //code
 }
 NOTE: same as function types
 */
struct Student{
    var name: String
    var swiftScore: Int
    var kotlinScore: Int
}
var alan = Student.init(name: "Alan", swiftScore: 100, kotlinScore: 25)
var chrissy = Student.init(name: "Chrissy", swiftScore: 25, kotlinScore: 100)
var susan = Student.init(name: "Susan", swiftScore: 60, kotlinScore: 60)
let students = [alan, chrissy, susan]

func sortStudents(firstStudent: Student, secondStudent: Student)->Bool{
    if (firstStudent.kotlinScore > secondStudent.kotlinScore){
        return true;
    }
    return false;
}
//Function type: (Student, Student) -> Bool
//print(type(of: sortStudents(firstStudent: students[0], secondStudent: students[1])))
//students.sorted(by: sortStudents(firstStudent:secondStudent:))

// No need to create a separate function -> can make use of a closure that only exists within the sorted method!
//let sortedStudents = students.sorted(by: {
//    (firstStudent: Student, secondStudent: Student)->Bool
//    in
//    if (firstStudent.kotlinScore > secondStudent.kotlinScore){
//        return true;
//    }
//    return false; })
//print (sortedStudents)

//swifties way: less code the better
let sortedStudents = students.sorted{$0.kotlinScore > $1.kotlinScore}



