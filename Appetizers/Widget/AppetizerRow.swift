//
//  AppetizerRow.swift
//  Appetizers
//
//  Created by Anshuman Sharma on 30/04/25.
//

import SwiftUI

struct AppetizerRow: View {
    let appetizer : Appetizer
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: appetizer.imageURL)) { phase in
                switch phase {
                case .empty:
                    ProgressView() // Loading spinner
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 90)
                        .clipped()
                        .cornerRadius(10)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)
                @unknown default:
                    EmptyView()
                }
            }
            
            VStack(alignment: .leading, spacing: 5){
                
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                
            } .padding(.leading)
            
        }
    }
}

#Preview {
    AppetizerRow(appetizer: MockAppetizer.appetizer)
}
