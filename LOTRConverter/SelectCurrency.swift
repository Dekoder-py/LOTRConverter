//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Dekoder-py on 3/30/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var currency: Currency
    
    var body: some View {
        ZStack {
            // background parchment
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        if self.currency == currency {
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .shadow(color: .black, radius: 10)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(lineWidth: 3)
                                        .opacity(0.5)
                                }
                        } else {
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .onTapGesture {
                                    self.currency = currency
                                }
                        }
                        
                    }
                }
                
                
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    
                // currency icons
                
                // done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.3))
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    SelectCurrency(currency: .silverPiece)
}
