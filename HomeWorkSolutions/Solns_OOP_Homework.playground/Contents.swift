// Part 1.

// 1. Please provide a real-world example of when you might choose to use a let and one in which you might choose to use a var in an iOS Application

// When capturing details about a user for a credit score app, we might choose to make their name a let and their creditScore as a var, starting with their initial score value but acknowledging that it can change over time.


// 2. Please add the following two items together and store into a variable of type Float

let x = 10.0
let y = 3.0

let z: Float = Float(x + y)


// 3. Please add the following two variables together and store into a variable of type Int

let first = 10
let second: Int? = 3

let sum = first + (second ?? 0)

// Part 2.

/*
 Problem Statement:
 We will be practicing the core Object Oriented Programming concepts in the context of Swift.
 */


// Instructions: go through the following 6 mini problems, adding code after the blocks that read // Your code here:


// 1. Classes

// Define a class called Vehicle with at least 1  property and 1 method

// Your code here:

class Vehicle {
    var hasWheels: Bool
    
    init(hasWheels: Bool) {
        self.hasWheels = hasWheels
    }
    
    func drive() {
        print("I am driving")
    }
}


// 2. Inheritance

// From your Vehicle class above, create a subclass from it. Override at least one of the methods from the Vehicle superclass.

// Your code here:


class Boat: Vehicle {
    
    init() {
        super.init(hasWheels: false)
    }
    
    override func drive() {
        print("Driving on water")
    }
    
}


// 3. Encapsulation

// If this were a separate file from the class definitions above, we could create an instance of your class from Part 2., use it freely but keep the implementation details private from the client user (you in this example).

// To see this in action, please create another subclass of the Vehicle class with at least one private method (e.g. a helper method) that is called from a public method.

// Create an instance of this subclass, and call the aforementioned public method on it. From doing so, you have witnessed encapsulation, because private methods/properties are used behind the scenes without the direct caller having (or getting) to know about it.

// Your code here:

class Car: Vehicle {
    
    init() {
        super.init(hasWheels: true)
    }
    
    private func helper() {
        print("I am helping")
    }
    
    func steer() {
        helper()
    }
    
}

let car = Car()
car.steer()



// 4. Abstraction

// Create a protocol named Organism with requirements for 2 methods: eat and breath. Then, create a concrete class which conforms to this protocol.

// Now create an instance of your Organism's concrete class but assign it to a variable type-annotated to be an Organism. E.x. let org: Organism = <Your class initializer>

// From this process you have used abstraction, whereby the client (caller) can choose to hide other specific details of the conforming class and only require the interface of the Organism (the abstraction)

// Your code here:

protocol Organism {
    func eat()
    func breath()
}

class Cat: Organism {
    func eat() {
        print("eating catnip")
    }
    
    func breath() {
        print("Breathing with lungs")
    }
    
    func meow() {
        print("meowing")
    }

}

let org: Organism = Cat()
org.eat()
//org.meow() // not allowed


// 5. Compile-time Polymorphism

// In a sample class you create, use compile time polymorphism to "overload" a function, that is create two that are of the exact same name but different parameter lists or return types

// Your code here:

class TestClass {
    
    func someFunction() {
        //
    }
    
    func someFunction() -> Bool {
        true
    }
    
    func someFunction(test: Bool) {
        // use test
    }
    
}


// 6. Runtime Polymorphism

// Create two classes conforming to the Organism protocol from Part 4, each with different implementations of the eat method. In each, make sure you have a different print statement.

// 1) Again, create an instance with type-annotated type Organism (use a var).

// 2) Assign this variable to one of your conforming class instances and call eat on it. Observe the result

// 3) Reassign the Organism variable to an instance of the other conforming class you created, and once again call eat on it.

// Here we can observe two different results with code that reads exactly the same character by charater (org.eat()) -- that is runtime polymorphism in action!

// Your code here:


class Dog: Organism {
    
    func eat() {
        print("eating dog food")
    }
    
    func breath() {
        print("breathing with lungs")
    }
    
    
}

class Fish: Organism {
    
    func eat() {
        print("eating fish food")
    }
    
    func breath() {
        print("breathing with gills")
    }
    
}

var testOrg: Organism = Dog()
testOrg.eat() // Same exact code as 182
testOrg = Fish()
testOrg.eat() // Same exact code as 180

