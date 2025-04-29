//
//  Network.swift
//  Appetizers
//
//  Created by Anshuman Sharma on 30/04/25.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func getAppetizers(completed : @escaping(Result<[Appetizer], AppError>)){
         
        guard let url = URL(string : NetworkConstants.baseURLString + NetworkConstants.getAppetizersEndPoint) else {
            completed(.failure(.InValidURL))
            return
        }
        
    }
}


