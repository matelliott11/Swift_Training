import UIKit

//functions and methods are the same
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

//function parameters are constants not variables

//returning values from a function
//-> is the return value
// whats it called, what does it accept and what does it return func basic () ->
//must have a return staement

//if a function does not return anything you can add a void in the return
//Void is different to nil. Void is no value nil is there may or may not be

