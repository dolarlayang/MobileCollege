import UIKit
import Foundation
// Due Date: Friday May 12th, Start of lecture


// Part 1
// 1. Please provide a real-world example of when you might choose to use a let and one in which you might choose to use a var in an iOS Application
//      A real world example for using var declaration would be creating a damage indicator for a Battle Royale game so players could see how much damage they output to their enemies to measure their performance. A let declaration in a simular scenario, would be when a player performs a specific ability that does fixed damage.

// 2. Please add the following two items together and store into a variable of type Float
/*
let x = 10.0
let y = 3.0
//let result = x + y
//let result: Double = Double(x) + Double(y)
let result = Float(x + y)
print ("The sum of x and y is", result)


// 3. Please add the following two variables together and store into a variable of type Int

let first = 10.0
let second: Int? = Int(3.0)
// The ?? nil operator is saying, if the variable "second" is nil assign the value to 0. If it is not nil unwrap the optional binding and use it's underlying value, 3.
let sum = Int(first) + (second ?? 0)

//let first = 10.0
//let second: Int? = nil
// The ?? nil operator is saying if the variable second is nil then use the value 10.
//let sum = Int(first) + (second ?? 10)
print ("The sum of first and second is", sum)

//test
var currentIndex: Int? = 3
if var nextIndex = currentIndex{
    nextIndex += 1
    print(nextIndex)
}
*/

// Part 2
/*
 Problem Statement:
 We will be practicing the core Object Oriented Programming concepts in the context of Swift.
 */


// Instructions: go through the following 6 mini problems, adding code after the blocks that read // Your code here:
/* Submitting your code:
 Please follow the instructions on the README page under the section "Getting Started with git" in the sub-heading "Submitting Assignments"
 */


// 1. Classes
// Define a class called Vehicle with at least 1  property and 1 method
// Your code here:

class Vehicle {
    var carSpeed: Int
    
    init(carSpeed: Int){
        self.carSpeed = carSpeed
    }
    
    func driveCar() {
        print ("The generic vehicle travels at \(carSpeed+1) MPH")
    }
}

let myVehicle = Vehicle(carSpeed: 4)
myVehicle.driveCar()

// 2. Inheritance
// From your Vehicle class above, create a subclass from it. Override at least one of the methods from the Vehicle superclass.
// Your code here:
class Honda: Vehicle {
    override init(carSpeed: Int) {
        super.init(carSpeed: carSpeed)
    }
    
    override func driveCar() {
        print ("The Honda is traveling \(carSpeed+10)MPH ")
    }
}

let myHonda = Honda(carSpeed: 4)
myHonda.driveCar()

    // 3. Encapsulation
    // If this were a separate file from the class definitions above, we could create an instance of your class from Part 2., use it freely but keep the implementation details private from the client user (you in this example).
    // To see this in action, please create another subclass of the Vehicle class with at least one private method (e.g. a helper method) that is called from a public method.
    // Create an instance of this subclass, and call the aforementioned public method on it. From doing so, you have witnessed encapsulation, because private methods/properties are used behind the scenes without the direct caller having (or getting) to know about it.
    // Your code here:
let date = Date()
class Boat: Vehicle {
    var boatSpeed: Int
    
    init(boatSpeed: Int) {
        self.boatSpeed = boatSpeed
        super.init(carSpeed: 0)
    }
    
    private func startEngine() {
        print("Engine started at \(date)")
        
    }
    
    private func stopEngine() {
        print("Engine stopped at \(date). You traveled at \(boatSpeed) MPH.")
    }
    
    func showBoatLogs() {
        startEngine()
        stopEngine()
    }
}

let myBoat = Boat(boatSpeed: 4)
myBoat.showBoatLogs()

    //Note
    
    
    // 4. Abstraction
    // Create a protocol named Organism with requirements for 2 methods: eat and breath. Then, create a concrete class which conforms to this protocol.
    // Now create an instance of your Organism's concrete class but assign it to a variable type-annotated to be an Organism. E.x. let org: Organism = <Your class initializer>
    // From this process you have used abstraction, whereby the client (caller) can choose to hide other specific details of the conforming class and only require the interface of the Organism (the abstraction)
    // Your code here:

protocol Organism {
    func doBreath()
    func doEat()
}

class Insect: Organism {
     func doBreath(){
        print("HaaaaWWWWhhHh")
    }

     func doEat(){
        print("NomNOMNnomnom")
    }

}

let roach: Organism = Insect()
roach.doBreath()
roach.doEat()
    
    // 5. Compile-time Polymorphism
    // In a sample class you create, use compile time polymorphism to "overload" a function, that is create two that are of the exact same name but different parameter lists or return types
    // Your code here:
class Rat {
    //base Function
    func makeNoise() {
        print("The rat shakes in fear and shouts out a cry")
    }
    //Added a parameter, noise with data type string. The complier will spit out the print statement along with whatever I input for what noise is, as long as it's a string.
    func makeNoise(noise: String){
        print("The rat shakes in fear and shouts out a cry: \(noise)")
    }
    //Added a parameter, action with data string. The complier will spit out the print statement along with whatever I input for what action is.
    func makeNoise(action: String){
        print("The rat \(action)")
    }
}

let rat = Rat()
rat.makeNoise()
rat.makeNoise(action: "Hides in the dark corner")
rat.makeNoise(noise: "SQEEEEUAAAAL SQUEAAAAL")

    
//     6. Runtime Polymorphism
//     Create two classes conforming to the Organism protocol from Part 4, each with different implementations of the eat method. In each, make sure you have a different print statement.
//     1) Again, create an instance with type-annotated type Organism (use a var).
//     2) Assign this variable to one of your conforming class instances and call eat on it. Observe the result
//     3) Reassign the Organism variable to an instance of the other conforming class you created, and once again call eat on it.
//     Here we can observe two different results with code that reads exactly the same character by charater (org.eat()) -- that is runtime polymorphism in action!
    class Dogs: Organism {
        func doBreath() {
        }
        func doEat() {
            print("CHOMP! CHOMP! CHOMP!")
        }
    }
    
    class Cats: Organism {
        func doBreath() {
        }
        func doEat() {
            print("nibble. nibble. nibble.")
        }
    
    }
    
//    Using one variable, I want to be able to call out two different results.
    var bloodHound: Organism = Dogs()
    bloodHound.doEat()
    //Procs method for cat using the same variable named bloodhound.
    bloodHound = Cats()
    bloodHound.doEat()

