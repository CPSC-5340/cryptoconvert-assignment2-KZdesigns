//
//  CryptoConverter.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/20/24.
//

import SwiftUI

struct CryptoConverter: View {
    @ObservedObject var viewModel = CryptoConverterViewModel()
    @State var userInput: String = ""
    
    var body: some View {
        HStack {
            Text("Bitcoin: ")
            TextField("Enter Amount", text: $userInput)
                .padding(8)
                .keyboardType(.decimalPad)
        }
        .padding(20)
        
        VStack {
            List {
                ForEach(viewModel.listOfRows) {
                    row in CryptoItem(row: row)
                }
            }
            .listStyle(.grouped)
        }
        .onAppear {
            viewModel.fetchRows()
        }
        .onChange(of: userInput) { _ in
            if let amount = Double(userInput) {
                viewModel.conversion(userInput: amount)
            }
            
        }
    }
}



#Preview {
    CryptoConverter()
}
