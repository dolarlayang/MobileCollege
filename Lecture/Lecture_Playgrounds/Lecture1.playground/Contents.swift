import UIKit

var greeting = "Hello, playground"


//sample code
print("Hello world")


//commenting code

//single line

// First name variable
var firstName = "Christina"


//multiline comment
/*
 this code is an example;
 we're learning Swift
 it's so fun!
 */


//variables

//keyword

var age = 25

//type inference
//will infer a number to be an Int, unless we have decimals
//prefered way; more "swifty"
type(of: age)

//type annotation
//don't need to be explicit, unless type inference would be wrong
var weight: Double = 125
type(of: weight)

//can't change the data type of a variable
//age = "fifteen"

//can't redefine a variable aka create a new variable with the same name
//var age = "fifteen"
age = 15
print(String(age))
//fifteen
//var ageString = "25"


//data types

//Int
var dogAge = 12
type(of: dogAge)
//Double
var grade = 96.4
type(of: grade)
//Float
var floatGrade: Float = 96.4
type(of: floatGrade)
//Bool
var isPassing = true
type(of: isPassing)
//String Char
var letterGrade: Character = "B"
type(of: letterGrade)
letterGrade = "A"
//Tuple
var grades = (numberGrade: grade, letterGrade:letterGrade)
print(grades.letterGrade)
print(grades.0)
//swifty code


//scope
//the variable test ONLY exists within the function!
func test() {
    var test = "test"
}
print(test)

//constants
//Constants have all the same data types, but can't change the value
let lastName = "Campbell"
//Xcode will prompt  you to switch to var
//lastName = "Drury"

//better for memory


//you can initialize them later -> use type annotation

let middleName: String
middleName = "Nicole"

//VARIABLES AND CONSTANTS: MUST INITIALIZE BEFORE USING
//print(middleName)



//Operators

//Arithmatic
var x = 10
var y = 43
//print(y+x)
// data type matters!
//cant do math with different data types
//the resulting value will match the data type of the variables
//this will just cast the results
print(Double(y/x))
//proper casting
print(Double(y)/Double(x))

//doubles vs. ints

//casting



//comparisons

//greater than

//less than

//equal



//logical operators

//and

//or

//not



//assignment operators
//a shorthand for adding/dividing/multiplying/division performed on itself
var mathGrade = 87
mathGrade += 2


//range operators
//open ended: 1 until infinity!
let countDown  = 1...


// closed range: 1,2,3
//for number in 1...3 {
//    print(number)
//}

//less than/greater than range: 5,6,7,8,9
for number in 5..<10 {
    print(number)
}


//String Concatentation



//String Interpolation

