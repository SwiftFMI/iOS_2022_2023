import UIKit

var greeting = "Hello, playground"


//Основи на езика. Лекции от другия курс.
//Structs & Protocols
//Classes & Extensions
//---
//Closures & Generics
//Property Wrapper


//var variable = 13
//let const = 15
//print("Sum = \(variable + const)")
//
//
//if variable > 10 {
//    print("Variable is greater than 10.")
//} else if variable < 15 {
//    print("Variable is less than 15.")
//}

//var temperature = 12
//let status = temperature < 0 ? "Много е студено. Облечете се топло." : "Не е много студено, но си вземи шапка."
//    print(status)

//Int, Double, Bool, String

var tuple: (f: Int, s: String) = (1, "купи сладолед")
//print(tuple.f)

enum MyType {
    case case1
    case b
    case z
}

var myTypeVar = MyType.z
var myTypeVar1: MyType = .z

//var optionalInt = Optional<Int>(5)
//if Optional.none == nil {
//    print("None is nil")
//}
//
//var x:Int? = nil
//let y = x ?? 15
//
//if let x = x {
//    print("x = \(x)")
//}
//
//if let x {
//    print("x = \(x)")
//}

//    let someNumber: Int = 3
//    switch someNumber {
//    case 1,  3:
//        print("Едно или три")
//        fallthrough
//    case 4...10:
//         print("Между 3 и 10")
//    default:
//        print("Някакво друго число")
//    }
//
//var i = 5
//i += 1
//
//switch myTypeVar {
//
//case .case1:
//    print("case1")
//case .b:
//    print("b")
//default:
//    print("b")
//}
//
//let point = (0, 1)
//switch point {
//    case (let x, 0):
//        print("точка (\(x), 0) се намира на абсциса х")
//    case (0, let y):
//        print("точка (0, \(y)) се намира на ордината у")
//    case let (x, y):
//        print("точка (\(x), \(y)) е някъде другаде")
//    }
//let m = 10
//let range = 1..<m // [1,5) //[1, 5]
//for index in range {
//    print("\(index) по 5 е \(index * 5)")
//}
//// Array & Dictionary
//let names = ["Боян", "Драго", "Емил", "Петко", "Спас"]
//    for name in names {
//        print("Здравей, \(name)!")
//    }
//
//let numberOfLegs = ["паяци": 8, "мравки": 6, "котки": 4]
//   for (animalName, legCount) in numberOfLegs {
//       print("\(animalName)те имат \(legCount) крака")
//   }
//
//var ten = 10
//var flag = true
//
//while ten > 0 || flag {
//    if flag { flag = false }
//    print("\(ten)")
//    ten -= 1
//}
//
//
//repeat {
//    print("\(ten)")
//    ten += 1
//} while ten < 10
//
//var arr1 = [Int]()
//arr1.append(1)
//
//print(arr1)

//Int, Double, Bool, String, (Int, Int), [Int], [String: (Int, Double)]

//enum MyCustomType {
//    case action(Int)
//}

var car = (name: "Tesla", maxSpeed: 200)

struct Car {
    var name: String // = "No name"
    var maxSpeed = 0
    
    let topSpeed = 300
    var boostSpeed: Int {
        maxSpeed * 2
    }
    
    func printMe() -> () {
        print("\(name) => \(boostSpeed)")
    }
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, maxSpeed: Int) {
        self.name = name
        self.maxSpeed = maxSpeed
    }
}


var emptyCar = Car(name: "Tesla")
var c = Car(name: "Tesla", maxSpeed: 200) //Car("Tesla", 200)
c.printMe()
c.boostSpeed

var c2 = c
c.name = "New Tesla"
print("c2.name = \(c2.name)")


func sum(firstArgument a: Int,_ b: Int) -> Int {
    return a + b
}

print(sum(firstArgument: 3, 5))

var x: Int = 5
var y = x //copy
x = 3
print("y = \(y)")

//func
class CCar {
    var name = "No name"
    var maxSpeed = 0
    
    init(name: String, maxSpeed: Int) {
        self.name = name
        self.maxSpeed = maxSpeed
    }
    
    deinit {
        print("deinit => \(name)")
    }
}

var cc = CCar(name: "Tesla", maxSpeed: 200)

var cc2 = cc
cc.name = "New Tesla"
print("cc2.name = \(cc2.name)")

var instance: CCar? = CCar(name: "Ford", maxSpeed: 100)

instance = nil

print("???")


protocol Sellable {
    var pricePerUnit: Double { get }
    var isAvailable: Bool { set get }
    func m()
}

struct S1: Sellable {
    var isAvailable: Bool
    
    func m() {
        
    }
    
    var pricePerUnit: Double {
        123.3
    }
}

//var s = S1(isAvailable: false)

class S2 {
    var isAvailable: Bool
    var pricePerUnit: Double = 100.0
    init(isAvailable: Bool) {
        self.isAvailable = isAvailable
    }
}

extension S2: Sellable {
    func m() {
        
    }
}

extension S2 {
    func x() -> Int {
        return 42
    }
}

var s2 = S2(isAvailable: true)
s2.x()


extension Int {
    var toBGN: String {
        "\(self) лв."
    }
}

print(100.toBGN)
