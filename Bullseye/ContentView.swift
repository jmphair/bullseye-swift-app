//
//  ContentView.swift
//  Bullseye
//
//  Created by Jonathan Phair on 2023-04-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
            Text("89")
            Slider(value: .constant(50), in: 1.0...100.0)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
