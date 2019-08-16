import UIKit

//functions and methods are the same
// Function are made to be wrote once and reused loads
func showMessage () { //often have a verb or a noun as this is a doing word always need ()
    print ("This function call worked.")
}

showMessage() //so this just calls our function with no conditions hence ()

//functions with parameters passed in
func showMessage1 (number: Int) {
    print ("This function call worked. You passed in the integer: \(number)")
}

showMessage1(number: 42) // we must pass in a number now

//now pass an integer and a string
func showMessage2 (number: Int, name: String) {
    print ("This function call worked. You passed in the integer: \(number) and the string \(name)")
}

showMessage2(number: 42, name: "matt") // we must pass in a number now

func showMessage3 (number: Int, name: String) {
    print ("This function call worked. You passed in the integer: \(number) and the string \(name)")
}

var number = 34
var name = "Bob"

showMessage3(number: number, name: name)

//function parameters are constants not variables

//returning values from a function
//-> is the return value
// whats it called, what does it accept and what does it return func basic () ->
//must have a return staement

//if a function does not return anything you can add a void in the return
//Void is different to nil. Void is no value nil is there may or may not be

// _ tells you to understand we are ignoring value or surpressing it

//so when we rite the above functions we dont have to rewrite the argument value we can add an underscore
//eg below we call out number:int in the function and then when we call the function have to put number: xx againt in the parameters.
//to stop this we can put _ number: int this means when calling the function in the parameters we dont need to rpeat number: xx we can just put xx
//func showMessage2 (number: Int, name: String) {
//print ("This function call worked. You passed in the integer: \(number) and the string \(name)")
//}
//showMessage2(number: 42, name: "matt") // we must pass in a number now
//like so
func showMessage4 (_ number: Int, _ name: String) {
    print ("This function call worked. You passed in the integer: \(number) and the string \(name)")
}

showMessage4(42, "matt") // by adding _ in the function we dont need to repeat the name.
// we can do this and pass in variabels still

func showMessage5 (_ number: Int, _ name: String) {
    print ("This function call worked. You passed in the integer: \(number) and the string \(name)")
}
var number1 = 89
var name1 = "Lois"

showMessage5(number1, name1)

//we may also want to chnage the name of the argument to do this we can just add another one in
//if you see 2 arguments first one is used outside function and 2nd is inside the function
//changing argument labels
func Differance(between firsAmount: Int, and secondAmount: Int) -> Int{
    if firsAmount > secondAmount {
        return firsAmount - secondAmount
    } else {
        return secondAmount - firsAmount
    }
}
let result = Differance(between: 27391, and: 7863)

print ("The Differance is: \(result)")
