//
//  Transaction.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

enum TransactionError: Error {
    
    case message(String)
    case urlError
    case serialization
    case noInternet
    case unknown
}


enum Transaction<T:Any> {
    
    case success(T)
    case fail(TransactionError)
}
