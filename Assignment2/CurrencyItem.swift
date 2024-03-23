//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/20/24.
//

import SwiftUI

struct CurrencyItem: View {
    
    var card: CurrencyConvertModel<CurrencyItemModel>
    
    var body: some View {
        if card.isFront {
            FrontCurrencyItem(card: card.cardContent)
        } else {
            BackCurrencyItem(card: card.cardContent)
        }
    }
}

#Preview {
    CurrencyItem(card: CurrencyConvertModel(cardContent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", currencyFlag: "🇺🇸", multiplier: 1)))
}


struct FrontCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyFlag)
                    .font(.system(size: 64))
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currencyCode)
                    .font(.system(size: 32))
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.mint)
        
    }
}

struct BackCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multiplier))
                    .font(.system(size: 24))
                    .foregroundStyle(.white)
                    .padding(20)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}
