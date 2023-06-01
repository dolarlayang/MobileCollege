
//** I commented all the extra practice out **\\

// This assignment will walk us through the usage of custom types in Swift



/*
1. Create a Class that represents a car with at least 2 properties and 1 instance method

 */

//Your code here:

class Car {
    var carDoor: Int = 0
    var carBrand: String = ""
    
    func carHonk() {
        print("beep beep")
    }
}

//let crv = Car()
//crv.carHonk()

//    init(carDoor: Int, carBrand: String){
//        self.carDoor = carDoor
//        self.carBrand = carBrand
//    }
//}

//class Honda: Car {
//    override init(carDoor: Int, carBrand: String) {
//        super.init(carDoor: carDoor, carBrand: carBrand)
//    }
//    func displayBrand() {
//        print("This a \(carBrand) civic.")
//    }
//}
//var hondaCivic = Honda(carDoor: 2, carBrand: "Honda")
//hondaCivic.displayBrand()
//*** Testing difference between Class & Struct ***\\
//var hondaAccord = hondaCivic
//hondaAccord.carBrand = "Accord"
//hondaAccord.displayBrand()
//hondaCivic.displayBrand()


/*
 2. Create a Class that subclasses from the above Car class called Truck. Provide at least 1 more property and 1 more instance method

 */

// Your Code here:

class Truck: Car {
    var carSize: String = ""
    func truckHonk(){
        print("HOooOONnnNK")
    }
}
    
    
//    init(carDoor: Int, carBrand: String, carSize: String) {
//        self.carSize = carSize
//        super.init(carDoor: carDoor, carBrand: carBrand)
//    }
//    func displayTruckSize() {
//        print("This is a \(carSize).")
//    }
//}
//
//let materFromCars = Truck(carDoor: 2, carBrand: "Tow Truck", carSize: "Light Truck")
//materFromCars.displayTruckSize()



/*
 3. Create a Protocol called Vehicle with a function drive
 
 
 */

// Your Code here:
protocol Vehicle {
    func drive()
}



/*
 4. Add an extension to the car class Car class to provide protocol conformance to the Vehicle protocol
 
 
 */
// Your code here:

extension Car: Vehicle {
    func drive() {
        print("Car now in drive")
    }
}

//let mcQueenFromCars = Car()
//mcQueenFromCars.drive()

/*
 
 5. Create a Struct Boat that conforms to the Vehicle protocol as well
 */
// Your code here:

struct Boat: Vehicle {
    func drive() {
        print("Boat is boating")
    }
}
//    func displayStat() {
//        print("Boat HP: \(boatHeath) Boat SPD: \(boatSpeed)")
//    }
//    var boatHeath:Int
//    var boatSpeed:Int
//
//    init(boatHeath: Int, boatSpeed: Int){
//        self.boatHeath = boatHeath
//        self.boatSpeed = boatSpeed
//    }
//}
//*** Testing difference between Class & Struct ***\\
//let titanic = Boat(boatHeath: 20, boatSpeed: 10)
//print("Titanic") // Lets me know that the stat printed below belongs to Titanic
//titanic.displayStat()
//print("New Titanic") //Lets me know that the stat printed below belongs to NEW Titanic
//var newTitanic = titanic
//newTitanic.boatSpeed = 100 //Speed is changed
//newTitanic.displayStat() //Verifies new stat change
//titanic.displayStat() //Verifies that the original stat is still kept the same and wasn't changed.

//Using struct allows me to change the value of boatSpeed for New Titanic, even though I created New Titanic to be assigned to Titanic which has a default value of 10.

/*
 6. Create an enum called VehicleClass that specifies 2 vehicle types, car and boat, each with an associated value of type Vehicle. Give the car type an associated value of a Car (from above), and the boat type an associated value of a Boat (from above)
 */
// Your code here:

enum VehicleClass {
    case car(car: Car)
    case boat(boat: Boat)
}


/*
 7. Define a variable of the enum type VehicleType. Use a switch statement to take in this vehicle variable and call the Vehicle protocol method drive(). Test this with a car enum value input and a boat enum value input
 */

// Your code here:

var vehicleType: VehicleClass = .car(car: Car())
vehicleType = VehicleClass.boat(boat: Boat())
//vehicleType = VehicleClass.car(car: Car())

switch (vehicleType){
case .car(let car):
    car.drive()
case .boat(let boat):
    boat.drive()
}
// 8a. Create a Protocol automobile with at least 1 method

protocol Automobile {
    func describeVehicle()
}







// 8b. Create a Protocol Car with with at least 1 property and 2 methods
protocol CarProtocol { //Car already used so I'll use CarProtocol
    var carColor: String {get set}
    func revEngine()
    func setDriveMode()
}







// 9. Creat a class Truck that conforms to both Car and Automobiles
//Truck already used, so I'll create a newTruck class and have it conform to CarProtocol and Automobiles
class NewTruck: CarProtocol, Automobile {
    var carColor: String = ""
    
    func revEngine() {
        
    }
    
    func setDriveMode() {
        
    }
    
    func describeVehicle() {
        
    }
    
    
}






// 10a. Create a class Boat with at least 1 property and 1 function NOT defined in the automobile protocol

class NewBoat {
    var newBoatName: String = ""
    
    func turnOnLight() {
        
    }
}








// 10b. Extend the class Boat to conform to the automobile protocol

extension NewBoat: Automobile {
    func describeVehicle() {
        
    }

}
