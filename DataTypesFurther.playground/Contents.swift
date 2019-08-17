//enumeration - Use case

var itemName: String //Middlemarch
var releaseYear : Int // 1871
//var itemType: String // Book or Movie or Music however doing like this does not mean it could be something complete random like dickwad
//so an enumeration is like a set of specific things it can be

// this will be a new data type like a sting or int is
enum MediaType {
    case book
    case movie
    case music
    case game
}
itemName = "The Great Escape"
var ItemType : MediaType
ItemType = MediaType.book

//later
ItemType = .movie // it gets cleaver and you dont have to put enumname.itemtype you can just put .itemtype

func CrazyStuff(){
switch ItemType{
case .movie:
        print ("I have been watching \(itemName)")
case .book:
        print ("I have been reading \(itemName)")
case .game:
    print ("I have been playing \(itemName)")
case .music:
    print ("I have been listening to \(itemName)")
    
}
}
 CrazyStuff()

//Enum Raw Values. you can add raw values to each enumeration
enum GlassSize: String{
    case small = "125ml"
    case medium = "175ml"
    case large = "250ml"
}
var myWineGlass : GlassSize = .large
print ("Your \(myWineGlass) glass of wine is \(myWineGlass.rawValue)")

//Enum cusomized values where we can have multipul values for each enum

//STRUCTURES are types that contain other types
struct Movie{
    // properties
    var title: String
    var director: String
    var releaseYear: Int
    var genera: String
    
    //method
    func summary() -> String {
        return "\(title) is a \(genera) File directed by \(director) and released in \(releaseYear)"
    }
    //adding another func
    func TitleRelease() -> String{
        return ("\(title) was released in \(releaseYear)")
    }
}

var movie1 = Movie(title: "Fast and Furious", director: "Bob Geldoff", releaseYear: 2018, genera: "Action")
var movie2 = Movie(title: "Spy Kids", director: "Scary Man", releaseYear: 2006, genera: "Kids")
//note we have to indicate the func we are calling withing the statement
print (movie1.summary())
print (movie2.summary())
//if i added another function we can call that by adding.nameofit
print (movie1.TitleRelease())
print (movie2.TitleRelease())

//DICTIONARIES are common data structures. they have keys and values that we can map unlike arrays where the value maps back to 0,1,2,3 etc
// airline names will be values with the short hand as a key.
var airlines = ["SWA": "South Africa Air",
                "BA": "British Airways",
                "AA": "SAmerican Air",
                "IA": "India Air"
]
// use [ ] to look up key
var good = "BA"
var bad = "CC"

if let result = airlines[good]{
    print (result)
} else{
    print ("No Match Found")
}
if let result = airlines[bad]{
    print (result)
} else{
    print ("No Match Found")
}

//add or chnage
//airlines ["BB" = Bristol Airlines" // this will add new key value]
