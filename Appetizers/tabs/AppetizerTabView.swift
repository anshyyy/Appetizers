//
//  ContentView.swift
//  Appetizers
//
//  Created by Anshuman Sharma on 29/04/25.
//

import SwiftUI

struct AppetizerTabView: View {
    
    var body: some View {
       
        NavigationView {
            
            List(MockAppetizer.appetizers.request, id :\.id){ appetizer in
                AppetizerRow(appetizer: appetizer)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Appetizersss")
        }
       
      
    }
}

#Preview {
    AppetizerTabView()
}
