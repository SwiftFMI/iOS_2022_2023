import UIKit

var greeting = "Hello, playground"


protocol MyDelegate {
    func action(a: Int, b: Int) -> Int
    var x: Int { get }
}

extension MyDelegate {
    var x: Int {
        1
    }
}


struct GenericStruct {
    var delegate: MyDelegate
    var a: Int
    var b: Int
    
    func action() -> Int {
        return delegate.action(a: a, b: b) * delegate.x
    }
}

extension Int: MyDelegate {
    func action(a: Int, b: Int) -> Int {
        return a + b
    }
    
    var x: Int {
        self
    }
}


struct SumDelegate: MyDelegate {
    func action(a: Int, b: Int) -> Int {
        return a + b
    }
}

struct MultDelegate: MyDelegate {
    func action(a: Int, b: Int) -> Int {
        return a * b
    }
}


let g = GenericStruct(delegate: SumDelegate(), a: 5, b: 5)
let mult = GenericStruct(delegate: MultDelegate(), a: 5, b: 5)

print(g.action())
print(mult.action())
