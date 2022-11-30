//
//  CarDetailsView.swift
//  SwiftUI Navigation
//
//  Created by Emil Atanasov on 12/01/22.
//

import SwiftUI

struct CarDetailsView: View {
    var car: Car
    var body: some View {
        VStack {
            Text(car.name)
                .font(.largeTitle)
            if let c = car as? ECar {
                Group {
                    Text("Electrical")
                    Text("Battery: \(c.batteryCapacity)")
                }
            }
            HStack {
                Text("Top Speed: ")
                Text("\(car.speed) km/h")
            }
        }
        .navigationTitle(car.name)
    }
}

struct CarDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CarDetailsView(car: ECar(name: "Demo car", speed: 1000, batteryCapacity: 1000))
        }
    }
}
