import UIKit

let participants = [
    "8MI0600181", "72072", "62614", "62517",
    "62492", "62533", "0MI0700070", "81972",
    "62477", "62409" ]

let variants = [ "variant 1", "variant 2", "variant 3" ]

func variant() -> String {
    return variants[Int.random(in: 0..<variants.count)]
}

for p in participants {
    let v = variant()
    print("\(p) -> \(v)")
}
