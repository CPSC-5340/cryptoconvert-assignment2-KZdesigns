//
//  ConvertModel.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/20/24.
//

import Foundation


struct CurrencyConvertModel<SomeType> : Identifiable {
    let id = UUID()
    var isFront: Bool = true
    let cardContent: SomeType
}

struct CurrencyItemModel {
    let currencyName: String
    let currencyCode: String
    let currencyFlag: String
    let multiplier: Double
}

struct CryptoConverterModel<SomeType> : Identifiable {
    let id = UUID()
    let rowContent: SomeType
    var calculatedAmount: Double = 0
}

struct CryptoItemModel {
    let cryptoName: String
    let cryptoCode: String
    let multiplier: Double
}
