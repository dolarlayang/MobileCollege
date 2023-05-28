//Lecture 5

//OOP Review

// defining a class
//initializer: can add initialization function OR make the member optional OR set a default value
//Object: specific instance of a class
//class AnimalClass {
//    var weight: Double? = nil
//    let name: String? = nil
////    init(weight: Double, name: String) {
////        self.weight = weight
////        self.name = name
////    }
//    func walk() -> String {
//        return "time to go for a walk"
//    }
//
//    func eat() -> String {
//        return "feed me today"
//    }
//}

//let tiger = AnimalClass()

//deinit: not commonly used; doesn't have keyword func (like the initializer)

//class AnimalClass {
//    var weight: Double
//    let name: String
//    init(weight: Double, name: String) {
//        self.weight = weight
//        self.name = name
//    }
//
//    deinit {
//        //specify extra work we want to do
//        print("object has been deinitialize")
//    }
//
//    func walk() -> String {
//        return "time to go for a walk"
//    }
//
//    func eat() -> String {
//        return "feed me today"
//    }
//}

//Computed properties
class Student {
    var grade: Double
    var letterGrade: String {
        get {
            if grade >= 90 {
                return "A"
            } else if ((grade < 90) && (grade > 80)) {
                return "B"
            } else {
                return "C"
            }
        }
    }
    init(grade: Double) {
        self.grade = grade
    }
}
let christina = Student(grade: 92)
print(christina.letterGrade)
//christina.letterGrade = "B"

//Encapsulation: adding private to functions/variables to keep it only accessible from the class
class InterestRate {
    private var interestRate: Double = 4.3
    
    func getInterestRate() -> Double {
        return interestRate
    }
}
let interest = InterestRate()
interest.getInterestRate()
//Inheritance

class AnimalClass {
    var weight: Double
    let name: String
    init(weight: Double, name: String) {
        self.weight = weight
        self.name = name
    }
    func walk() -> String {
        return "time to go for a walk"
    }

    func eat() -> String {
        return "feed me today"
    }
}

class DogClass: AnimalClass {
      func bark() -> String{
        return "ruff ruff"
    }
    func growl() -> String {
        return "grrrr"
    }
}

class Husky: DogClass {
    var color: String
    init(weight: Double, name: String, color: String) {
        self.color = color
        super.init(weight: weight, name: name)
    }
    
    func howl() -> String {
        return "awwooooooo"
    }
}

var bailey = Husky(weight: 45.0, name: "Bailey",color: "Grey")


//Inheritance vs Extensions: Extensions can be done for any data type: classes, structs, enumerations, protocols, etc.

extension DogClass {
    func learnTrick(trick: String) -> String {
        return("\(name), \(trick)")
    }
}

var cooper = DogClass(weight: 32.0, name: "Cooper")
cooper.learnTrick(trick: "sit" )

//extend String
extension String {
    func repeatString() -> String {
        return "\(self.description) \(self.description)"
    }
}

let name = "Christina"
print(name.repeatString())
//overriding or overloading initializer


//final keyword: keeps the function or class from being overrided
//class Beagle: DogClass {
//    override func bark() -> String {
//
//    }
//}

//POP: replaces Inheritance in swift; better for memory

protocol Animal {
    var weight: Double {get set}
    func walk() -> String
    func eat() -> String
}

protocol Pet {
    func price() -> Double
}

class Dog: Animal, Pet {
    func price() -> Double {
        return 350.0
    }
    
    var weight: Double
    
    init(weight: Double) {
        self.weight = weight
    }
    
    func walk() -> String {
        return "I need 2 walks a day"
    }
    
    func eat() -> String {
        return "I eat kibble"
    }
}

class Parrot: Animal {
    var weight: Double
    init(weight: Double) {
        self.weight = weight
    }
    
    func walk() -> String {
        return "I don't go for walks"
    }
    
    func eat() -> String {
        return "I eat seeds"
    }
    
    func fly() -> String {
        return "I'm flying!"
    }
}


//Abstraction example
let tweetie: Animal = Parrot(weight: 7.0)
//only has the functionalities defined in protocol; abstracting out the extra functions of our class
tweetie.eat()
