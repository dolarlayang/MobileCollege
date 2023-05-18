import UIKit

//Optionals: Why do we use them

//Ex: Middle Name field

var firstName: String
var lastName: String
var middleName: String?

type(of: middleName)
firstName = "Christina"
lastName = "Campbell"
middleName = "Nicole"

func printName(first: String, last: String, middle: String?) {
//    print("\(first) \(middle!) \(last)")
    //better option: default value
//    print("\(first) \(middle ?? "") \(last)")

    // better option: nil check
//    if middle != nil {
//        print("\(first) \(middle!) \(last)")
//    } else {
//        print("\(first) \(last)")
//
//    }
    
    // best option: optional binding
    if let middle = middle {
        print(type(of: middle))
        print("\(first) \(middle) \(last)")
     }
    print("\(first) \(last)")

    
}

//printName(first: firstName, last: lastName, middle: middleName)

//NOTE: Sometimes you don't have a choice! If another developer chooses to make something optional, you HAVE to unwrap to use


//OOP


//blueprint: a variable that is this type of object has X properties, and X functionalities

//Ex: Class Student (Properties and functions)
//initiation of properties has two options: 1. make them optional 2. initializer

class Student {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func doHomework() {
        print("\(name) did his/her homework!")
    }
}

//instantiate object

let student1 = Student(name: "Christina", age: 25)
student1.doHomework()
let student2 = Student(name: "Alex", age: 27)
student2.doHomework()

// Instance is fully defined by its property values


//Inheritence: a class can inherit from another class AKA have all of it's properties/functionalities to start!

//EX: Vehicle, Car, Boat

class Vehicle {
    var price: Double
    let color: String
    
    init(price: Double, color: String) {
        self.price = price
        self.color = color
    }
    
    func move() {
        print("My vehicle moved.")
    }
}

class Car: Vehicle {
    var doorCount: Int
    
    init(price: Double, color: String, doorCount: Int) {
        self.doorCount = doorCount
        super.init(price: price, color: color)
    }

    func printDoorCount() {
        print("This is a \(doorCount) door Car.")
    }
    
}

let toyota = Car(price: 20000.0, color: "blue", doorCount: 4)
toyota.move()
toyota.printDoorCount()
toyota.doorCount = 2
toyota.printDoorCount()




//notice how sometimes we may want to have the same type of functionality, but the action itself is always going to be different for each subclass -> make use of Protocols!

//Protocol Intro

//Example: Animal, Dog
//properties are a little different in protocols: {get set}

//Ex: Protocol Inheritence
//EX: StudentProtocol, MathStudent class


//Can inherit a class and a protocol

//Encapsulation:  limiting access to data; we don't always want everyone to be able to access/change our data!

//Access Specifiers: public, private

//Ex: Basketball game results(GO WARRIORS!): Don't want users of site to be able to change the score, only want them to be able to view it)


//Abstraction: Example first
//Ex: type StudentProtocol, instantiate with MathStudent




//What's happening? Type of object is Protocol, but instantiated with a specific class name -> Will ONLY have the properties and the functionalities of the Protocol

/* Sounds similar to encapsulation
 
Main differences:
 
 Encapsulation: Information hiding. Think of a single object with some public and some private methods.
 
 Abstraction: Implementation hiding. Can involve several classes, whereby we "decouple" the usage of a class functionality from its implementation.

One dev may specify a usage while another dev chooses between several class options that conform to that requirement.
 
 */


// Why important?

// Allows for elegant, simple systems which keep complexity isolated to specific classes.

// Allows for developer collaboration across frameworks. In iOS we see this pattern a lot wherein Apple might give us a framework and specify a "protocol" or a blueprint that they will be calling. Then without any direct communication they allow us as iOS developers to choose which class to "plug" into this pattern without Apple having to know about it.




/* Polymorphism (not as scary as it sounds)

 Term comes from biology, and in computer science it generally means the ability of ONE variable or ONE function to have different characteristics (morph) at differnt TIMES.

*/


//Compile Time: When the project is building

//Method Overloading = two functions with the same name, but different parameters
//***NOTE: Why is this aloud? a functions name in swift is NOT just the word after func, the name incudes the argument names


//Method Overriding = Subclass re-writing Superclass function
//***NOTE: often times you want to make use of super class call (ex: viewDidLoad())


/**Run time: when the project is running
arises as an intentional byproduct of inheritance and/or abstraction

Determines which function it's going to call at runtime

 Swift invokes the actual method during running of the program.
 It will not know which method to invoke during compile time.
 It works in tandem with inheritance.
 **/


// Ex. Case 1 - Using abstraction


protocol Plant {
    func grow()
}

class Ivy: Plant {
    func grow() {
        print("growing on a vine")
    }
    
    func otherFunctionNotSeenByPlantProtocol() {
        //
    }
}

class Corn: Plant {
    func grow() {
        print("growing on a stalk (is that what it's called?)")
    }
    
    func yetAnotherFunctionNotSeenByPlantProtocol() {
        //
    }
    
}

// Note the type annotation needed!
var plant: Plant = Ivy()
plant.grow()
plant = Corn()
plant.grow()

// NOTE those two lines are exactly the same but have different results and different objects behind the scenes. They have essentially morphed over the time lifecycle of the program into different implementations and that is runtime polymorphism!


// Ex. Case 2 - Using inhertiance

class SweetCorn: Corn {
    
    override func grow() {
        print("growing on a stalk but with sweet kernels")
    }
    
}

plant = SweetCorn()
plant.grow()



// All three lines read to the developer EXACTLY alike but we as programmers need to follow along in the life of a program and understand that even though they look the same, they are different behind the scenes.


