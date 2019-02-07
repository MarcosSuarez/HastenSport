//
//  NetworkService.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

protocol NetworkService {
    func getList(onSuccess: (ListSportEntity)->Void, onFail: (Error)->() )
}

class NetworkServiceImplementation {
    
}

extension NetworkServiceImplementation: NetworkService {
    
    func getList(onSuccess: (ListSportEntity) -> Void, onFail: (Error) -> ()) {
       
    }
}
