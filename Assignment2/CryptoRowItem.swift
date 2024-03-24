//
//  CryptoRowItem.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/23/24.
//



import SwiftUI

struct CryptoRowItem: View {
    
    var row: CryptoItemModel
    var amountOfBitCoin: Double
    var totalAmount: Double = amountOfBitCoin == NULL ? row.multiplier :   row.multiplier * amountOfBitCoin
    
    var body: some View {
        HStack {
            Text(row.cryptoName)
            Spacer()
            Text("test")
        }
    }
}

#Preview {
    CryptoRowItem(row: CryptoItemModel(cryptoName: "US Dollar", cryptoCode: "USD", multiplier: 65522.69), amountOfBitCoin: 1)
}
