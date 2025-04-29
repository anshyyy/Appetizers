//
//  Appetizer.swift
//  Appetizers
//
//  Created by Anshuman Sharma on 30/04/25.
//

import Foundation

public struct Appetizer : Decodable {
    public var id: Int
    public var description: String
    public var carbs: Int
    public var calories: Int
    public var price: Double
    public var imageURL: String
    public var protein: Int
    public var name: String
}


struct AppetizerResponse {
    let request : [Appetizer]
}


struct MockAppetizer{
    static let appetizer = Appetizer(
        id: 1,
        description: "This is a description",
        carbs: 10,
        calories: 100,
        price: 10.0,
        imageURL: "https://www.shutterstock.com/image-photo/fried-salmon-steak-cooked-green-600nw-2489026949.jpg",
        protein: 10,
        name: "Test"
    )
    static let appetizers = AppetizerResponse(request: [appetizer,appetizer,appetizer,appetizer,appetizer])
}
