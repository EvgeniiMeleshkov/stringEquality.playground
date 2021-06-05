import UIKit

var greeting = "Hello, playground"


//If String0 is equal to String1


func isEqual (str1: String, str2: String) -> Bool {
    var testString = str1
    for char in str2 {
        if let i = testString.firstIndex(of: char) {
            testString.remove(at: i)
        } else {
            return false
        }
    }
    return testString.count == 0
}


isEqual(str1: "Hello, world!", str2: "Hello, world!")  //true
isEqual(str1: "Hello, world!", str2: "Hello, World!")  //false
//____________________________________________________________


//sorted method:
func isEqualSorted (str1: String, str2: String) -> Bool {
    return str1.sorted() == str2.sorted()
}

isEqualSorted(str1: "Hello!", str2: "Hello!")   //true
isEqualSorted(str1: "loHel!", str2: "Hello!")   //true
isEqualSorted(str1: "qwerty", str2: "qwertyU")  //false

/*method sorted anotation:
 
func sorted() -> [Character]

You can sort any sequence of elements that conform to the Comparable protocol by calling this method. Elements are sorted in ascending order.
 
 The sorting algorithm is not guaranteed to be stable. A stable sort preserves the relative order of elements that compare equal.
 */
