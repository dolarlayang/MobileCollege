////Conditional statements
//// if else statements
//let isRaining = false
//if (isRaining) {
//    print("bring an umbrella!")
//
//} else {
//   print("it's a sunny day")
//}
////swifty way
//if isRaining {
//    print("bring an umbrella!")
//
//} else {
//   print("it's a sunny day")
//}
////unwrapping
//var isSunny: String?
//if let isSunny = isSunny {
//    print("\(isSunny), yay!")
//}
////logical operators: boolean value
//let isCold = true
//
//if isRaining && isCold  {
//    print("Don't go outside")
//}
//
////if else if: long
//var weather = "Sunny" //Rainy, Windy, Hurricane, Tornado
////if weather == "Sunny" {
////    print("It's a beautiful day!")
////} else if weather == "Rainy" {
////    print("Don't forget your umbrella!")
////} else if weather == "Windy" {
////    print("Bring a jacket!")
////}
//
////better way? Switch statement
//
//switch weather {
//case "Sunny", "Partly Cloudy":
//    print("It's a beautiful day!")
//case "Sunny":
//    print("Don't forget your umbrella!")
//default:
//    print("Your weather app is not working, try again later.")
//}
//
//
//var grade = 80
//var letterGrade: Character = "F"
//switch grade {
//case 90...100:
//    letterGrade = "A"
//case 80...89:
//    letterGrade = "B"
//case 70...80:
//    letterGrade = "C"
//case 60...69:
//    letterGrade = "D"
//case ...59:
//    letterGrade = "F"
//default:
//    print("Not a valid letter grade")
//}
//print(letterGrade)
//
//// comparison temporary constant example
//
//var inchesOfSnow = 12
//
//switch inchesOfSnow {
//case let inches where inchesOfSnow < 13:
//    print("There's only \(inches) of snow! Not worth going to the mountain.")
//case 14...25:
//    print("The full mountain won't be open, but have fun!")
//case 25...:
//    print("It'll be a great ski day!")
//default:
//    print("I dont have any information for you ,sorry :(")
//}
//


//Loops
//while vs repeat while
//var countDown = 5
//
//while countDown > 0 {
//    print(countDown)
//    countDown -= 1
//}
//
//// countDown is 0
//
//repeat {
//    print(countDown)
//    countDown -= 1
//} while countDown > 0
////for loops
//var groceryList = ["eggs", "bread", "butter"]

//for item in groceryList {
//    print(item)
//}
//
//for num in 1..<10 {
//    print(num)
//}

for i in stride(from: 0, through: 10, by: 2) {
    print(i)
}
//strides




//functions: reusable block of code
//
func addUser(name: String, email: String, age: Int) -> String {
    if age < 18 {
        return "I'm sorry, you are too young to view this site!"
    }
    return "Welcome \(name)! We sent a confirmation email to \(email)."
}

//func addUser(name: String, email: String) -> String {
//    return "Welcome \(name)! We sent a confirmation email to \(email)."
//}
//addUser(name: "Tom", email: "tom@tom.com")
var response = addUser(name: "Christina", email: "christinac9895@gmail.com", age: 25)
print(response)

//arguments: they're immutable aka can't change them!

//default argument values

//return values

//function types: arguments -> return type








//Collections

//Ordered: order they're entered = ordered they're retrieved; stored in a particular order in memory
//Unordered: not stored in a particular order; when you loop through them the order will change

//Arrays
//type safe: every element must be of the same type
// zero-based index: accessed by index; starts at 0
//ordered
var groceries = ["yogurt", "cheese", "milk"]
//for item in groceries {
//    print(item)
//}
//print(groceries[1])
groceries.append("pizza")
groceries.remove(at: 1)
groceries.count
for item in groceries {
    print(item)
}

//example: tasks
// uses type inference
//built in functions (count, insert, remove)
//trailing commas are okay but not necessary
// mutable vs immutable

//Sets
//Unique values
//Unordered: not stored in a particular order; when you loop through them the order will change
//Type safe: every element must be of the same type
//Have to use type annotation; Why?
var music: Set<String> = ["Rock", "Hiphop", "blues"]
for item in music {
    print(item)
}
music.insert("Rock")
for item in music {
    print(item)
}

//Dictionary
//Key-value pairs: look up value by the key; keys must be unique
//type safe: every element must be of the same type
//Unordered: not stored in a particular order; when you loop through them the order will change
var classes = ["Math":23, "English":13, "Music":34]

classes["Science"] = 21
classes["Math"] = 45
print(classes)
var keys = classes.keys
for key in keys {
    print(classes[key])
}

