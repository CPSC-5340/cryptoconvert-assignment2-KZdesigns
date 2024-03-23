//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct USDConverter: View {
    
    @ObservedObject var viewModel = ConverterViewModel()
    let titleText: String = "1 USD Exchange Rate"
    
    var body: some View {
        Text(titleText)
            .font(.system(size: 22))
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                ForEach(viewModel.listOfCards) {
                    card in CurrencyItem(card: card)
                        .onTapGesture {
                            viewModel.flip(card: card)
                        }
                        .padding(15)
                }
            }
        }
        .onAppear {
            viewModel.fetchCards()
        }
      
    }
}



#Preview {
    USDConverter()
}
