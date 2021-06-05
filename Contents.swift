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
