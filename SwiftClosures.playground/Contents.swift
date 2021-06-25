import UIKit

var str = "It's 100 Days of Swift"

//swif-closure
var coding = {
    print("I am coding in swift")
}
coding()

//clousures with parameters
var programming = { (language: String) in
    print("I am coding in \(language)")
}
programming("Swift")

//clousures return with params
var downloadFile = { (filename: String) -> Bool in
    //do something with the filename
    //or other logic here
    print("\(filename) downloaded")
    return true
}
var isFileDownloaded = downloadFile("fileNameStr")

//clousures return without parms
var download = { () -> Bool in
    return true
}

//clousres as params - 01
let printMyName = {
    print("I am Dilum")
}

func printSomething(action: () -> Void){
    print("I am printing something...")
    action()
    
}

printSomething(action: printMyName)

//clousres as params - 02
let resignation = { (name: String) in
    print("Dear \(name), I'm outta here!")
}
func printDocument(contents: (_ name: String) -> Void) {
    print("Connecting to printer...")
    print("Sending document...")
    contents("Dilum")
}
printDocument(contents: resignation)


func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel() {
    print("I'm driving in my car")
}

travel {
    print("using trailing closure syntax")
}


func remind(action: (String) -> String) {
    print("Reminder")
    let preparationType = action("Final Exams")
    print("\(preparationType)")
}


remind {
    return "I have to prepare for \($0)"
}
    

