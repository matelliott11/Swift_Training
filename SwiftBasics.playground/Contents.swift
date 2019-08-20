
//Variabels used
var playerName = "Isabella" //write in camel case small fisrt letter then capital letter for next word
var surname = "Elliot"
var age = 20
var temperature = 72.6
var activeMembership = true
var bonusScore: Int //when we dont know what the value will be we have to say what data type we exect
var levelComplete: Bool //: means of type

//data types, Int, String, Bool, Double, Float, Bool.

//var is the only way to declare a variable
age = age + 0 //this says the age var is no = to what is was plus 5

//If else statement
if surname != "Elliott"{
    print ("Error you Twat, you spelt \(surname) it shoult be spelt Elliott")
}
else {
    print (playerName, surname, "is", age, "weeks old")
    
}
//Constants instead of var use let (we can only set the value once)
let minutesInAWeek = 10080
let todaysHightemperature: Float

//OPERATORS something to do something specific =,+,-,* etc
let a = 5
let b = 2

let myResult1 = a + b
let myResult2 = (a / b) //this gives us an answer of 2 but is should be 2.5. This is because it is treating it as an int not a float or double

//to find out what data type if has to be
type(of: myResult1)
type(of: myResult2)
// to resolve this we could add in a type annotation let myResult2: double = a / b. THIS WOULDL NOT WORK as we dont have implicit convertion between types but we could do it as Double(a / b). This convertion would still not work however as would only print 2.0

//OPTIONALS
//var and let are not set to default values like other languages. e.g. in C a var strng is set to "" a int will be 0 default. Not in swift

//we add a ? after type name. as an example if we want a middle name but one isnt supplied we would make that optional so it doesnt populate as ""
var firstName: String
var middleName: String? //will make it optional but will still have the same datatype i.e int,boolean etc
var lastName: String

//Useing optional values
var reguarInt: Int
var optionalInt: Int?

//can set values
reguarInt = 100
optionalInt =  nil //or nil

//later operation using optional
reguarInt = reguarInt + 5
//optionalInt = optionalInt + 5 //it wont let you because what if it is nil

//check for nill in a long winded way
//if optionalInt != nil{
  //  var unwrappedInt = optionalInt! //this is called forced unwrapping
//}

//better way Optional Binding
if let unwarppedInt = optionalInt {
    print (unwarppedInt) //chnage optionalInt to nill to see
} else {
    //there is no value so will just do nothing hence print statement added
    print ("Nothing")
}

//Collections being arrays - ordered collection of items, dictionary a collection of key pairs and set's an unmonitored collection of items
// Arrays are 0 based so 10 items indexed 0-9, they are type - safe (i.e all int or all strings) and can be var or let

//make a variable array of strings
var musicalModes = ["Ionian","Dorian","Phrygian","Lydian","Mixolydian","Minor"]
//make a variable array of Ints
var speedlimits = [15,25,30,35,40,45,55,70,75]
//whats at index 0
let initiateMode = musicalModes[0]
// change the string at index 5 we can only do this because we used var and not let
musicalModes[5] = "Aeolian"
//add a new element
musicalModes.append("Locrian")
//remove an element
let theRemovedElement = musicalModes.removeLast()
//create an array where we do not know the values
var myStingArray: [String]
myStingArray = []
var myIntArray: [Int]
myIntArray = []

myStingArray.append("Water Polo")
myIntArray.append(42)

print (myStingArray)
print (myIntArray)

//if else statements
var score = 100

if score > 10 {
    print ("top player baby")
}else {
    print ("Room for improvement")
}
//Conditions remember && is and || is or

//SWITCH Statements are when we dont want to use lots of else if such as where there are multipul outcomes
let volcanicExplosivityIndex: Int // could be 0 - 8
volcanicExplosivityIndex = 6
switch volcanicExplosivityIndex { //must be exhaustive and cover all values we add a default. We cannot have blank case
case 0:
    print ("Effusive")
case 1:
    print ("Gentle")
    print ("NOTE: expect a plume of < 1km")
case 2:
    print ("explosive")
case 3:
    print("Catastrophic")
case 4,...7:                     //... is a range. instead of writing 4,5,6,7
    print ("Cataclsmic")
    print ("BOY YOU DEAD")
    print ("😱")
default:
    //print ("No record")
    break
}

//LOOPS repeating code. 3 ways
//WHILE - while condition is true repeat
//repeat while this runs at least once even if condition is false
// For in Loop - will repeat for every item in a sequence.... for every number 1-5

//Creating Loops

let bunchOfWords = ["Matt", "Bob", "Keith", "Stu"]

for all in bunchOfWords {
    print (all)
}

for number in 0..<10 { //not the number or bunch of words is only used in the loop it is not a var or let and canno be used again outsde the loop
    print (number)
}
// ... is a range so 1...10 will give 1-10. If we use ..< it give us between so 1..< will give 1-9

//strideTo is like ... and stride Through is like ..> Stride are like jumpinh Gaps
for number in stride(from: 0, through: 256, by: 16 ){
print(number) //this give 0,16,32 etc
}
for number in stride(from: 0, to: 256, by: 16 ){
    print(number) //this misses off last one
}
//stride can also count backwards
for number in stride(from: 100, to: 0, by: -5){
    print (number) // this counts backwards
}

//String Interpolation - to alter a string
// you can use contatination so a + b
// \() is all you need

//example data
var trackName = "Beautiful"
var artistName = "The Street"
var duration = 228

//...
//let message = "Now playing TRACK by ARTIST which is DURATION seconds"
let message = "Now playing \(trackName) by \(artistName) which is \(duration) long"
print (message)

//you dont even need the let message = you can simple print and put it in
print ("Now playing \(trackName) by \(artistName) which is \(duration) long")
//you can even work with stuff so we can change duration from seconds to round minets and % sign for the remainder
print ("Now playing \(trackName) by \(artistName) which is \(duration / 60)m \(duration % 60)secs long")

