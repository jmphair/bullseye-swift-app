//
//  ContentView.swift
//  Bullseye
//
//  Created by Jonathan Phair on 2023-04-06.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    ZStack {
      Color("BackgroundColor").ignoresSafeArea()
      VStack {
        Text("🎯🎯🎯\nPut the Bullseye as close as you can to".uppercased())
          .bold()
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.footnote)
          .kerning(2.0)
          .padding(.horizontal, 30)
        Text(String(game.target))
          .kerning(-1.0)
          .font(.largeTitle)
          .fontWeight(.black)
        HStack {
          Text("1")
            .bold()
          Slider(value: $sliderValue, in: 1.0...100.0)
          Text("100")
            .bold()
        }
        .padding()
        Button(action: {
          alertIsVisible = true
        }) {
          Text("Hit me".uppercased())
        }
        .padding(20.0)
        .background(
          ZStack {
            Color("ButtonColor")
            LinearGradient(
              gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
          }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .bold()
        .font(.title3)
        .alert(isPresented: $alertIsVisible,
          content: {
          let roundedValue =
            Int(sliderValue
              .rounded())
          return Alert(title: Text("Hello there!"), message: Text("THe sliders value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
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
