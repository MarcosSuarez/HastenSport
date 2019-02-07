//
//  File.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

protocol GetListSportUseCase {
    func execute(completion: (Transaction<ListSportEntity>) -> ())
}

class GetListSportUseCaseImplementacion: GetListSportUseCase {
    
    func execute(completion: (Transaction<ListSportEntity>) -> ()) {
        
    }

}
