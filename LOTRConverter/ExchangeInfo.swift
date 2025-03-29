//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Dekoder-py on 3/28/25.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            // background parchment
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // title
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2)
                
                // text block
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                // exchange rates
                HStack {
                    // left currency image
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    
                    // exchange text
                    Text("1 Gold Piece = 4 Gold Pennies")
                    
                    // right currency image
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
                
                // done button
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.3))
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
