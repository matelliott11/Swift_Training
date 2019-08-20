//Closures
//Closures let us take lines of code and group it together to use elsewhere in our program
//closures do not have name like a function. it is a block of code we want to pass
//we can pass a closure argument into a function instead of a string or int etc
//llok into the help for sorting functions
struct BookStructure {
    var title: String
    var authorLastName: String
    var aithorFirstName: String
    var readingAge: Int
    var pageCount: Int
}
//create several book instances
let book1 = BookStructure.init(title: "Harry Potter and the Philosiphors Stone", authorLastName: "Rowling", aithorFirstName: "J.K.", readingAge: 8, pageCount: 345)
let book2 = BookStructure.init(title: "Harry Potter and the Order of the Phonix", authorLastName: "Rowling", aithorFirstName: "J.K.", readingAge: 12, pageCount: 512)
let book3 = BookStructure.init(title: "The Hungry Catapiller", authorLastName: "Elliott", aithorFirstName: "Matt", readingAge: 1, pageCount: 10)
let book4 = BookStructure.init(title: "50 shades of Gray", authorLastName: "Calcott", aithorFirstName: "Lois", readingAge: 18, pageCount: 233)

//create an array
let allBooks = [book1,book2,book3,book4]
//this is basicaly what a closure would do it is to verbose
//func compareTwoBooks (firstBook: BookStructure, secondBook: BookStructure) -> Bool{
 //   if firstBook.readingAge <= secondBook.readingAge {
 //   return true
//    } else{
 //       return false}
//}
//let ageSortedBooks = allBooks.sorted(by: compareTwoBooks)
//ageSortedBooks
//to do this in a closure we take function remove func and add it into the sorted mthod
// we can remove the return type and the bookstructure, instead of referacing book we can say $0 and $1
let ageSortedBooks = allBooks.sorted(by:) {$0.readingAge <= $1.readingAge}
ageSortedBooks
// now sort by page count
let pageCountBook = allBooks.sorted(by:) {$0.pageCount <= $1.pageCount}
pageCountBook
//all books for under 18's
let bookForUnder18 = allBooks.filter { $0.readingAge < 18}
bookForUnder18
