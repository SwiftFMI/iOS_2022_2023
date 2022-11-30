//
//  CarListView.swift
//  SwiftUI Navigation
//
//  Created by Emil Atanasov on 12/01/22.
//

import SwiftUI

class Car {
    var name: String
    var speed: Double
    
    init(name: String, speed: Double) {
        self.name = name
        self.speed = speed
    }
}

extension Car: Identifiable {
    var id: String {
        name
    }
}

extension Car: Hashable {
    static func == (lhs: Car, rhs: Car) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        name.hash(into: &hasher)
    }
}

class ECar: Car {
    var batteryCapacity: Double
    
    init(name: String, speed: Double, batteryCapacity: Double) {
        self.batteryCapacity = batteryCapacity
        super.init(name: name, speed: speed)
    }
}

extension Binding<Car>: Hashable, Equatable {
    public static func == (lhs: Binding<Value>, rhs: Binding<Value>) -> Bool {
        lhs.wrappedValue == rhs.wrappedValue
    }
    
    public func hash(into hasher: inout Hasher) {
        self.wrappedValue.name.hash(into: &hasher)
    }
}

struct CarListView: View {
    @State var cars = [ECar(name: "Tesla Model X", speed: 250, batteryCapacity: 300), Car(name: "Mercedes EQS", speed: 250),
                       Car(name: "IONIC 5", speed: 200),
    ]

    var body: some View {
        NavigationStack {
            List(cars) { car in
//                NavigationLink {
//                    CarDetailsView(car: $car)
//                } label: {
//                    Text(car.name)
//                }
                NavigationLink(car.name, value: car)
            }
            .navigationTitle("Cars")
            .navigationDestination(for: Car.self) { car in
                    CarDetailsView(car: car)
            }
        }
        
    }
}

struct CarListView_Previews: PreviewProvider {
    static var previews: some View {
        CarListView()
    }
}
