//Classes and Objects

//Defineing an instantiating lasses
// need to provide an inzialiser or properties
class Application {
    //properties
    var manufacture: String
    var model: String
    var voltage: Int
    var capacity: Int?
    
//Initializers - remember we dont need to initalize optionals
    init(){
        self.manufacture = "Default Manufacturer"
        self.model = "Default Model"
        self.voltage = 120
    }
// additional initializer
    init(withVoltage: Int){
        self.manufacture = "Default Manufacturer"
        self.model = "Default Model"
        self.voltage = withVoltage
    }
    
    //method --note we are useing self. this is to refer to the current instance used to stop conflicting names in large programmes
    func getDetails () -> String{
        var message = "This is the \(self.model) from \(self.manufacture)"
        if self.voltage >= 120 {
            message += "This model is for European usage."
        }
        return message
        }
}
// later, create an instance of the class
var kettle = Application()
kettle.manufacture = "Hotpoint"
kettle.model = "Z650i"
kettle.voltage = 120
kettle.capacity = 120
print(kettle.getDetails())

var Radio = Application() //because we have not put ny value for application it uses default values from the initiliazer
print(Radio.getDetails())

//Differances in classes and structs
//the above could be a class or a struct
//string altomaticlay put in initalizers so a calss you have to add init
//class can take part in inheritance and take in other data from
//structs are value types (values copied or duplicated) class are referance types so not types and can chnage the inital values
//REFERANCE if you chnage class to struct you can see the differance because we are making a copy of it, class will overrite and stuct will keep them different
// by adding === we can make the class act as a struct
class Message{
    var internalText: String = "This is some Text"
}
//create new instance
var firstMessage = Message()
//if i assign, it;s a referance to the original instance
var secondMessage = firstMessage //we could make the var's into let's to make it act liek a struct

secondMessage.internalText += " with some more text added on"

//print both they are the same
print(firstMessage.internalText)
print(secondMessage.internalText)

//: means a type of so we can inherit classes
class gameConsole {
    var make: String
    var modle: String
    var version: Int
    init() {
        make = "Default"
        modle = "Default"
        version = 0
    }
    func printDetails() -> String{
        let message1 = "Make: \(make), Model: \(modle)\(version))"
    return message1 }
}
var matt = gameConsole()
print(matt.printDetails())
// define a newclass super class and sub class it will use all the info from the previous glass
class playstaion: gameConsole {
    //new properties
    var installMethod: String
    
    override init() { //we have to overide the inital initializers
        self.installMethod = "Download Default"
        // to overdie the initla value in the super class we can right super.make
    }
    //new method
    func game() ->String{
        let message2 = "sudhfjksdfjhs"
        return message2
        
    }
    
}

1

