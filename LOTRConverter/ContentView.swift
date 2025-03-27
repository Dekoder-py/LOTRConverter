//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Kyle B on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                // pony logo
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // conversion section
                HStack {
                    // left section
                    VStack {
                        // currency
                        HStack {
                            // symbol
                            // text
                        }
                        
                        // input field
                    }
                    // equals sign
                    
                    // right section
                    VStack {
                        // currency
                        HStack {
                            // text
                            // symbol
                        }
                        
                        // input field
                    
                    }
                    
                }
                
                // info button
                
            }
        }
        }
    }


#Preview {
    ContentView()
}
