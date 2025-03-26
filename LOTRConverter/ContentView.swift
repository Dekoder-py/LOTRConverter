//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Kyle B on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding()
            Text("Hello, world!")
            Button("Button"){
                print("clicked")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
