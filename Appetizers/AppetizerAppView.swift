//
//  AppetizerAppView.swift
//  Appetizers
//
//  Created by Anshuman Sharma on 29/04/25.
//

import SwiftUI

struct AppetizerAppView: View {
    var body: some View {
        TabView{
            AppetizerTabView().tabItem{
                Image(systemName: "house")
                Text("Appetizers")
            }
            
            AccountView().tabItem{
                Image(systemName: "person")
                Text("Account")
            }
            
            
            OrderView().tabItem {
                Image(systemName: "bag")
                Text("Orders")
            }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerAppView()
}
