//
//  ContentView.swift
//  GesturesApp
//
//  Created by Emil Atanasov on 9.01.23.
//

import SwiftUI

struct ContentView: View {
    @State private var scale = 1.0
    @State private var scaleSecondImage = 4.0
    @State private var dragOffset = CGSize.zero
    @State private var accumulated = CGSize.zero
    // can be updated in the callback. The value is relevant only while the gesture is ongoing. Once canceled, the value is reset.
    @GestureState private var fingerLocation: CGPoint? = nil
    
    var body: some View {
        VStack {
            Text("Gestures!")
                .font(.title)
            Image(systemName: "iphone")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .background(Color.gray)
                .scaleEffect(scale)
                .gesture(
                    TapGesture()
                        .onEnded { _ in
                            scale += 0.1
                        }
                    // both gesture detectors are receiving the touch events 
                        .simultaneously(with: DragGesture()
                            .updating($fingerLocation, body: { value, fingerLocationState, transaction in
                                fingerLocationState = value.location
                                if let fingerLocation {
                                    print("Finger Location: \(fingerLocation)")
                                } else {
                                    print("Missing location.")
                                }
                            }))
                )
            Image(systemName: "airplane")
                .imageScale(.large)
                .foregroundColor(Color.red)
                .scaleEffect(scaleSecondImage)
                .gesture(
                    LongPressGesture(minimumDuration: 1)
                    .onEnded { _ in
                        scaleSecondImage /= 2
                    }
                )
            Image(systemName: "basketball.fill")
                .imageScale(.large)
                .foregroundColor(Color.orange)
                .offset(dragOffset)
                                .gesture(
                                    DragGesture()
                                        .onChanged { gesture in
//                                            dragOffset = gesture.translation
                                            dragOffset = CGSize(width: gesture.translation.width + self.accumulated.width, height: gesture.translation.height + self.accumulated.height)
                                        }
                                        .onEnded { gesture in
                                            withAnimation(.spring()) {
//                                                dragOffset = .zero
                                                dragOffset = CGSize(width: gesture.translation.width + self.accumulated.width, height: gesture.translation.height + self.accumulated.height)
                                                                self.accumulated = dragOffset
                                            }
                                        }
                                )
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
