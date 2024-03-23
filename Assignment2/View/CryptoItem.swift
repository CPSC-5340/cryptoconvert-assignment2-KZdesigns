//
//  CryptoItem.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/23/24.
//

import SwiftUI

struct CryptoItem: View {
    
    var row: CryptoConverterModel<CryptoItemModel>
    
    var body: some View {
        HStack {
            Text(row.rowContent.cryptoName)
            Spacer()
            Text(String(format: "%.2f", row.calculatedAmount))
        }
    }
}

#Preview {
    CryptoItem(row: CryptoConverterModel(rowContent: CryptoItemModel(cryptoName: "US Dollar", cryptoCode: "USD", multiplier: 64920.69), calculatedAmount: 64920.69))
}
