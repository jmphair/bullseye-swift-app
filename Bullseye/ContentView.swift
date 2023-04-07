//
//  ContentView.swift
//  Bullseye
//
//  Created by Jonathan Phair on 2023-04-06.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  
  var body: some View {
    VStack {
      VStack {
        Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
          .bold()
          .kerning(2.0)
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.footnote)
        Text("89")
          .kerning(-1.0)
          .font(.largeTitle)
          .fontWeight(.black)
        HStack {
          Text("1")
            .bold()
          Slider(value: self.$sliderValue, in: 1.0...100.0)
          Text("100")
            .bold()
        }
        Button(action: {
          print("Hello, SwiftUI!")
          self.alertIsVisible = true
        }) {
          Text("Hit me")
        }
        .alert(isPresented: $alertIsVisible,
          content: {
          var roundedValue: Int =
            Int(self.sliderValue
              .rounded())
          return Alert(title: Text("Hello there!"), message: Text("THe sliders value is \(roundedValue)."), dismissButton: .default(Text("Awesome!")))
        })
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
