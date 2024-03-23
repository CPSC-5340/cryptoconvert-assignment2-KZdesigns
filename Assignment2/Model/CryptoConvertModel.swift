//
//  CryptoConvertModel.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/23/24.
//

import Foundation

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
