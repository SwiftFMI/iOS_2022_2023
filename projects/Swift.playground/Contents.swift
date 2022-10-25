//Основи на езика. Лекции от другия курс.
//Structs & Protocols
//Classes & Extensions
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
// n-торка
var tuple: (f: Int, s: String) = (1, "купи сладолед")
//print(tuple.f)
// изброим тип
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
// n-торка
var car = (name: "Tesla", maxSpeed: 200)
// структура
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

// функциите във Swift имате лейбълу на параметрите.
// С _ казваме, че този параметър, няма да има лейбъл.
// по подразбиране лейбълите и имената на параметрите съвпадат.
// в следващия пример, първият параметър има лейбъл firstArgument,
// а вторият, няма лейбъл. Имената, с които можем да изпозлваме
// параметрите в тялото на функцията са - a и b.
// Параметрите са константи - т.е. let.
func sum(firstArgument a: Int,_ b: Int) -> Int {
    return a + b
}
// общ тип на функция. Определя се от тип на параметрите и тип на резултата
var f1: (Int, Int) -> Int = sum
// функция от по-висок ред. Връща функция.
// Глобалните функции са представител на клоужър
func outerF() -> (() -> Int) {
    var x = 0
    // вложена функция. Представител на клоужър
    func next() -> Int {
        x += 1
        return x
    }
    return next
}
// кложър
f1 = {
    $0 * $1
}

// алтернативен запис

f1 = { a , b in
    return a * b
}

f1 = { a, b in
    a * b
}

f1 = {
    return $0 * $1
}

let iterator = outerF()
iterator()
iterator()
iterator()
print(iterator())

print(sum(firstArgument: 3, 5))
print(f1(1, 1))

var x: Int = 5
var y = x //copy
x = 3
print("y = \(y)")

//func
class CCar {
    var name = "No name"
    var maxSpeed = 100
    
    init(name: String, maxSpeed: Int) {
        self.name = name
        self.maxSpeed = maxSpeed
    }
    
    deinit {
        print("deinit => \(name)")
    }
}

var cc: CCar? = CCar(name: "Tesla", maxSpeed: 200)

// проблеми с паметта имаме само, когато ползваме референтни типове
// 1. класове
// 2. клоужъри
// Класическия проблем става наличен, когато имаме цикъл от референции.
// Така броячът на референциите, никога не става 0, за да последва
// освобождаване на паметта.
// ClassA -> ClassB -> ClassA

//var a : ClassA
//var b : ClassB

let sortFunction: (String, String) -> Bool = { a, b in
    var cc = cc
    //    print(f1(5, 7))
    
        print("Max Speed = \(cc?.maxSpeed ?? 0)")
        return a < b
    }
var cc2 = cc
print("CC exists!")
cc = nil
cc2 = nil
print("CC is nil!")
print("CC2 is nil!")
let names = ["Боян","Петко", "Драго", "Емил", "Спас"]
print(names.sorted(by: sortFunction) )



//cc.name = "New Tesla"
//print("cc2.name = \(cc2.name)")

var instance: CCar? = CCar(name: "Ford", maxSpeed: 100)

instance = nil

print("???")

// протокол - договор, който всички типове, които го имплементират
// ще спазват
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
// съхранените (stor-нати) пропъртита трябва да са част от
// основната дефиниция
class S2 {
    var isAvailable: Bool
    var pricePerUnit: Double = 100.0
    init(isAvailable: Bool) {
        self.isAvailable = isAvailable
    }
}
// имплементация на протокол в екстеншън (другите методи са вече налични)
extension S2: Sellable {
    func m() {
        
    }
}

extension S2 {
    func x() -> Int {
        return 42
    }
}

// екстеншън към протокол
extension Sellable {
    func m() {
        print("Protocol default implementation.")
    }
}

// class S2 - инициализатор / конструктор
var s2 = S2(isAvailable: true)
s2.x()

// добавяме ново изчеслимо пропърти към тип Int
extension Int {
    var toBGN: String {
        "\(self) лв."
    }
}
// екстеншън в действие
print(100.toBGN)

// Протокол Summable, който изисква оператор + да е дефиниран
// Ако трябва и други опрерации, може да разгледате следни протокол IntegerArithmeticType
protocol Summable {
    static func + (left: Self, right:Self) -> Self
}
//
//func sum(_ a: Int,_ b: Int) -> Int {
//    return a + b
//}
//
//func sum(_ a: Double, _ b: Double) -> Double {
//    return a + b
//}

// типът Int съдържа всички нужни изисквания и няма нужда да имплементираме
// нищо, понеже вече е част от имплементацията на Int
extension Int: Summable { }
// шаблонна функция, която дефинира сумата на два елемента,
// които имплементират протокол Summable
func sumGeneric<T:Summable>(_ a:T, _ b: T) -> T {
    return a + b
}

struct Vector : Summable {
    let x: Int
    let y: Int
    static func + (left: Vector, right:Vector) -> Vector {
        return Vector(x: left.x + right.x, y: left.y + right.y)
    }
}

//let result = sumGeneric(Vector(x: 1, y: 1), Vector(x: 1, y: 1))
print(sumGeneric(5, 5))

// протокол, който определя асоциирания тип и го запазва в Element.
// Когато определена колекция (примерно Array) имплементира този
// протокол тогава Element става по-конкретен
// Чрез Element и where клаузата (която изписвам след функция или тип)
// можем да задаваме по-сложни ограничения
// виж шаблонната функция isEqual
protocol CollectionEquatable {
    associatedtype Element
    var count: Int { get }
    subscript (i:Int) -> Element { get }
}
// шаблонна колекция. Item е шаблонен тип, който
// ще бъде заместен с конкретен
class Queue<Item> : CollectionEquatable {
    var items: [Item]
    
    init() {
        items = []
    }
    
    func insert(item: Item) {
       items.append(item)
    }
    
    func get() -> Item? {
        if items.count > 0 {
            return items.removeFirst()
        }
        
        return nil
    }
    
    subscript (i:Int) -> Item {
        return items[i]
    }
    
    var count: Int {
        return items.count
    }
}

extension Array : CollectionEquatable {}

var q = Queue<Int>()
q.insert(item: 1)
q.insert(item: 2)
q.insert(item: 3)
print("Queue.count = \(q.count)")
print("Queue[1] = \(q[1])")

var arr = [1, 3, 3]
// шаблонна функиция, която ставня два различни типа, които имплементират CollectionEquatable,
// и имат еднакви по тип елементи. В частност тази функция,
// може да работи и над колекции от един и същи тип. Т.е.
// шаблонната версия isEqual2 (виж по-долу) е частен случай на isEqual.
func isEqual<T:CollectionEquatable, U:CollectionEquatable>(left:T, right:U) -> Bool where T.Element:Equatable, U.Element == T.Element {
    if left.count == right.count {
        for i in 0..<right.count {
            if left[i] != right[i] {
                return false
            }
        }
        
        return true
    }
    
    return false
}
// семантично различна версия, която сравнява две еднакви по тип колекции,
// които имат днакви по тип параметри
// isEqual2(left: q, right: arr) - това извикване е невалидно
// понеже q е от тип Queue<Int>, а аrr е от тип Array<Int>
func isEqual2<T:CollectionEquatable>(left:T, right:T) -> Bool where T.Element:Equatable {
    if left.count == right.count {
        for i in 0..<right.count {
            if left[i] != right[i] {
                return false
            }
        }
        
        return true
    }
    
    return false
}

isEqual(left: q, right: arr)

