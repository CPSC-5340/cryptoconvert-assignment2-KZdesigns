//
//  NavigationMenu.swift
//  Assignment2
//
//  Created by Kyle Zimmerman on 3/20/24.
//

import SwiftUI

struct NavigationMenu: View {
    var body: some View {
        
        NavigationStack {
            List {
                NavigationLink("World Currency Exchange") { USDConverter() }
                NavigationLink("Cypto Exchange") { CryptoConverter() }
            }
            .listStyle(.grouped)
            .navigationTitle("Conversion App")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    NavigationMenu()
}
