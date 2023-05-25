// Name: Dola Y

//Lecture 3 Content: conditionals, loops, functions, collections

/*
 Problem Statement:
 We will be practicing using collections, constants and variables, operators, optionals, and data types by going through a series of short questions surrounding a virtual classroom
 */


// Instructions: go through the following 6 mini problems, adding code after the blocks that read // Your code here:


// 1. Define variables or constants for the first name, middle name, last name, and highest test score of the year so far for a sample student. Please assign values for these items.

// Your code here:
var firstName = "Dola"
var middleName = ""
var lastName = "Y"
var highestScore = 60


// 2. The student was able to get some extra credit! This allows them to increase their score value from part 1. by 20 percent! Please create a new variable storing the updated score, using the old variable to directly calculate the new score. Ex. if I have var score = 10, a 30 % increase would 1.3 * score.

// Your code here:
let extraCredit = 0.20
type(of: extraCredit)
let scoreRate: Double = Double(extraCredit) * Double(highestScore)
highestScore = Int(scoreRate) + highestScore

// 3. Below is a set of class pet types allowed by the School Board. Please add one more type to the set.
var allowedClassPets: Set<String> = ["Hamster", "Guinea Pig", "Frog", "Snake"]

// Your code here:
allowedClassPets.insert("Rat")
// To verify if Rat was added into the Set.
print(allowedClassPets)


// 4. Below are 3 students packaged into tuples with their name and test score. Create an array or Ints containing just the scores in descending order.
let studentOne = (name: "Alex", score: 10)
let studentTwo = (name: "Navdeep", score: 15)
let studentThree = (name: "Christina", score: 20)


// Your code here:
var studentArray = [20,15,10]
////for list in studentArray {
//    print(list)
//}
//Sorts scores by decensing order. From greatest int to lowest.
studentArray.sorted(by: >)


// 5. Based on the scores from part 4., the students have been awarded grades. Alex received a C, Navdeep a B, and Christina an A. Create a dictionary storing Key-Values pairs of this data, with the key being the name and the value being the grade. Note: the grade must be of type Character for full credit.

// Your code here:
var studentScores: [String: Character] = ["Alex": "C", "Christina": "A","Navdeep": "B"]
type(of: studentScores)

// 6. Navdeep got some extra credit! The teacher bumped up his grade in the class from a B to an A. Without creating another dictionary, edit the dictionary from part 5 to replace Navdeep's grade of B with an A

// Your code here:
studentScores["Navdeep"] = "A"
print(studentScores)


//Lecture 4 Content: enumerations, structs, tuples, closures


// This assignment will take us through a hypothetical class arrangement, going through the core concepts of Control-Flow, Loops, and Functions.




/* 1. Write a function that accepts the following parameters:
1) a tuple of (String, Int) pairs representing a student name and their test score
2) a threshold score that is needed to pass
 
 Write the body of the function to return either "Pass" or "Fail" depending on whether the score is above the inputted threshold
 
 
 Create 3 test inputs and call your function with them.
 */


// Your Code Below:


//**2nd Attempt**\\

func passOrFail2 (studentScore: (String, Int), threshold: Int) -> String {
    if studentScore.1 > threshold {
        return "Pass"
    }
    else {
        return "Failed"
    }
}

let student1: (String, Int) = ("Dora", 80)
let student2: (String, Int) = ("Flora", 90)
let student3: (String, Int) = ("Nora", 70)

let passingThreshold = 70
let studentPassed1 = passOrFail2(studentScore: student1, threshold: passingThreshold)
let studentPassed2 = passOrFail2(studentScore: student2, threshold: passingThreshold)
let studentPassed3 = passOrFail2(studentScore: student3, threshold: passingThreshold)

print(studentPassed1)
print(studentPassed2)
print(studentPassed3)

//**1st Attempt\\

//func passOrFail (studentScore: (String, Int))    {
//    //If the value for student score is less than 80, a message will prompt that they failed.
//    if (studentScore.1 < 80) {
//        print("Student failed")
//    }
//    else {
//        print("Student passed")
//    }
//}
//
//passOrFail(studentScore: ("Dola", 80))
//passOrFail(studentScore: ("Nhui", 70))
//passOrFail(studentScore: ("Sam", 100))


/*
 
 2. Write a function that accepts an array of Tuples of (String, Int) pairs representing a Name and Test Score of a student, as well as a score threshold, and returns an array of Strings representing the names of the students who passed.
 
 Create 3 test inputs and call your function with them.
 */

// Your Code Below:

//Create a function that accepts an array of tuples.
func getPassingStudents (studentsScores: [(String, Int)], threshold: Int) -> [String] {
    //Create a variable that holds the passing students into an Array
    var passingStudents: [String] = []
    //Loop iteration that goes over the scores of students, if the score varaible is >= they'll be added into the passingStudent array.
    for (name, score) in studentsScores {
        if score >= threshold {
            passingStudents.append(name)
        }
    }
    //NEED TO RETURN AN ARRAY OF STRINGS
    return passingStudents
}

let scores: [(String, Int)] = [
    ("Dola", 85),
    ("Sam", 80),
    ("Nhui", 70),
    ("Nasir", 60)
]

let getPassingThreshold = 80
let passingStudents = getPassingStudents(studentsScores: scores, threshold: getPassingThreshold)
print(passingStudents)

/*
 
 3. Write a function that accepts an array of Tuples of (String, Int) pairs representing a Name and Test Score of a student, as well as a score threshold. In the body of the function, write code to filter out tuple values of the input array where the scores were below the given input threshold. Return the filtered array.
 
    Hint: use the built-in Array filter method.
 
 Create 3 test inputs and call your function with them.
 */


// Your Code Below:

func filterPassingStudents (studentsScores: [(name: String, score: Int)], threshold: Int) -> [(String, Int)] {
    
    //Filter will return an array w/e condition you put.
    
    let filteredScores = studentsScores.filter  { (name: String, score: Int) in
        score >= threshold
    }
    return filteredScores
    }

let filteredScores: [(String, Int)] = [
    ("Dola", 85),
    ("Sam", 80),
    ("Nhui", 70),
    ("Nasir", 60)
]
let newPassingThreshold = 65
let filteredStudents = filterPassingStudents(studentsScores: filteredScores, threshold: newPassingThreshold)
print(filteredStudents)

///Trying another way

//func filterPassingStudents (studentsScores: [(String, Int)], threshold: Int) -> [(String, Int)] {
//    let filteredScores = studentsScores.filter {$0.1 > threshold}
//    return filteredScores
//    }
//
//let filteredScores: [(String, Int)] = [
//    ("Dola", 85),
//    ("Sam", 80),
//    ("Nhui", 70),
//    ("Nasir", 60)
//]
//let newPassingThreshold = 65
//let filteredStudents = filterPassingStudents(studentsScores: filteredScores, threshold: newPassingThreshold)
//print(filteredStudents)





