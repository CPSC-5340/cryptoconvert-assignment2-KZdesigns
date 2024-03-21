//
//  CryptoConverter.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/20/24.
//

import SwiftUI

struct CryptoConverter: View {
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
                HStack {
                    Text("US Dollar")
                    Spacer()
                    Text("23450.0")
                }
                HStack {
                    Text("Ethereum")
                    Spacer()
                    Text("14.3")
                }
                HStack {
                    Text("Tether")
                    Spacer()
                    Text("23450.0")
                }
                HStack {
                    Text("BNB")
                    Spacer()
                    Text("77.2")
                }
                HStack {
                    Text("USD Coin")
                    Spacer()
                    Text("23454.0")
                }
                HStack {
                    Text("XRP")
                    Spacer()
                    Text("62113.0")
                }
            }
            .listStyle(.grouped)
        }
    }
      
}

#Preview {
    CryptoConverter()
}
