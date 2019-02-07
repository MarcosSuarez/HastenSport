//
//  File.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

protocol GetListSportUseCase {
    func execute(completion: @escaping(Transaction<[ListSportEntity]>) -> ())
}

class GetListSportUseCaseImplementacion: GetListSportUseCase {
    
    func execute(completion: @escaping(Transaction<[ListSportEntity]>) -> ()) {
        let service = NetworkServiceImplementation()
        service.getList { (transactionList) in
            switch transactionList {
            case .success(let list):
                completion(Transaction.success(list))
            case .fail(let error):
                completion(Transaction.fail(error))
            }
        }
    }

}
