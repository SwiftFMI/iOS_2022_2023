//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Emil Atanasov on 10/31/22.
//

import SwiftUI

struct ContentView: View {
    private let staticText = "My Static Text"
    @State private var text = "hello world"
    @State private var title = "Title"
    @State private var isSwitchOn = false
    @ObservedObject var myModel = MyModel()
    @StateObject var newModel = MyNewModel()
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            
            Text("->\(myModel.counter)")
            ExtractedView(title: $title)
            

            Toggle("isOn", isOn: $isSwitchOn)
//            LabelList(title: "Demo view")
            TextField("StringProtocol", text: $title)
            if isSwitchOn {
                TitleWithColor(title: title, color: .green)
            }
            Button {
//                title += "^"
                myModel.increaseCounter(by: 2)
//                text += "!"
//                print("Title = \(title)")
//                print("Color Scheme = \(colorScheme)")
//                colorScheme.
            } label: {
                Text("Button")
            }
        }
        .padding()
        .environmentObject(myModel)
        .environmentObject(newModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    @Binding var title: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundColor(.cyan)
                    .font(.title)
                
                    .background(Color.blue)
                    .padding()
                TitleView()
                Button {
                    title = "*" + title + "*"
                } label: {
                    Text("Update title")
                }
            }
        }
    }
}

struct TitleWithColor: View {
    let title: String
    let color: Color
//    @State var newModel: MyNewModel = MyNewModel()
//    @EnvironmentObject var counter = MyModel()
    @EnvironmentObject var counter: MyNewModel
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(color)
                .font(.title)
                .background(Color.blue)
                .padding()
            Text("\(counter.counter)")
            Button {
//                title = "*" + title + "*"
//                model.increaseCounter(by: 1)
//                newModel.increaseCounterWithOne()
                counter.counter += 5
            } label: {
                Text("Update title")
            }
        }
    }
}

