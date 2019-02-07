//
//  NetworkService.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

protocol NetworkService {
    func getList(completion: @escaping(Transaction<[ListSportEntity]>) -> Void)
}

class NetworkServiceImplementation {
    let path:String = "https://api.myjson.com/bins/66851"
}

extension NetworkServiceImplementation: NetworkService {
    
    func getList(completion: @escaping (Transaction<[ListSportEntity]>) -> Void) {
        
        guard let urlBase = URL(string: path) else {
            return completion(Transaction.fail(.urlError))
        }
        URLSession.shared.dataTask(with: urlBase) { (data, response, error) in
            
            guard let restJson = data else {
                return completion(Transaction.fail(.noInternet))
            }
            do {
                let result = try JSONDecoder().decode([ListSportEntity].self, from: restJson)
                completion(Transaction.success(result))
            } catch {
                completion(Transaction.fail(.serialization))
            }
            }.resume()
    }
}
