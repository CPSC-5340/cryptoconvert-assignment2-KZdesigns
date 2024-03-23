//
//  CurrencyConverterViewModel.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/20/24.
//

import Foundation


class ConverterViewModel: ObservableObject {
    
    @Published private(set) var listOfCards = [CurrencyConvertModel<CurrencyItemModel>]()
    @Published private(set) var listOfRows = [CryptoConverterModel<CryptoItemModel>]()
    
    func fetchCards() {
        self.listOfCards = [
            CurrencyConvertModel(cardContent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", currencyFlag: "🇺🇸", multiplier: 1)),
            CurrencyConvertModel(cardContent: CurrencyItemModel(currencyName: "Chinese Yuan", currencyCode: "CNY", currencyFlag: "🇨🇳", multiplier: 6.94)),
            CurrencyConvertModel(cardContent: CurrencyItemModel(currencyName: "Canadian Dollar", currencyCode: "CAD", currencyFlag: "🇨🇦", multiplier: 1.36)),
            CurrencyConvertModel(cardContent: CurrencyItemModel(currencyName: "Australian Dollar", currencyCode: "AUD", currencyFlag: "🇦🇺", multiplier: 1.49)),
            CurrencyConvertModel(cardContent: CurrencyItemModel(currencyName: "Indian Rupee", currencyCode: "INR", currencyFlag: "🇮🇳", multiplier: 82.60)),
            CurrencyConvertModel(cardContent: CurrencyItemModel(currencyName: "Chilean Peso", currencyCode: "CLP", currencyFlag: "🇨🇱", multiplier: 832.04)),
       ]
    }
    
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
    
    func flip(card: CurrencyConvertModel<CurrencyItemModel>) {
        if let index = findIndex(card: card) {
            listOfCards[index].isFront.toggle()
        }
    }
    
    func findIndex(card: CurrencyConvertModel<CurrencyItemModel>) -> Int? {
        for index in 0..<listOfCards.count {
            if card.id == listOfCards[index].id {
                return index
            }
        }
        return nil
    }
    
    func conversion(userInput:Double) {
        for index in listOfRows.indices {
            listOfRows[index].calculatedAmount = userInput * listOfRows[index].rowContent.multiplier
        }
    }
}
