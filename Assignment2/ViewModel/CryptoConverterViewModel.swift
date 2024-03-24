//
//  CurrencyConverterViewModel.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/20/24.
//

import Foundation


class CryptoConverterViewModel: ObservableObject {
    
    @Published private(set) var listOfRows = [CryptoConverterModel<CryptoItemModel>]()
   
    func fetchRows() {
        self.listOfRows = [
            CryptoConverterModel(rowContent: CryptoItemModel(cryptoName: "US Dollar", cryptoCode: "USD", multiplier: 64920.69)),
            CryptoConverterModel(rowContent: CryptoItemModel(cryptoName: "Ethereum", cryptoCode: "ETH", multiplier: 19.13)),
            CryptoConverterModel(rowContent: CryptoItemModel(cryptoName: "Tether USDt", cryptoCode: "USDT", multiplier: 64824)),
            CryptoConverterModel(rowContent: CryptoItemModel(cryptoName: "BNB", cryptoCode: "BNB", multiplier: 116.01)),
            CryptoConverterModel(rowContent: CryptoItemModel(cryptoName: "Solana", cryptoCode: "SOL", multiplier: 372.19)),
            CryptoConverterModel(rowContent: CryptoItemModel(cryptoName: "XRP", cryptoCode: "XRP", multiplier: 103897)),
       ]
    }
    
    func conversion(userInput:Double) {
        for index in listOfRows.indices {
            listOfRows[index].calculatedAmount = userInput * listOfRows[index].rowContent.multiplier
        }
    }
}

