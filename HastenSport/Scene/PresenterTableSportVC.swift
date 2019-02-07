//
//  File.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

protocol PresenterTableSportVC:class {
    func viewIsReady()
    func getNumberOfRow() -> Int
    func getCell(atIndex: Int)
    func getNumberOfSection() -> Int
}

class PresenterTableSportImplementation: PresenterTableSportVC {
    
    private unowned let view:TableSportProtocol
    private let useCase:GetListSportUseCase
    
    init(view: TableSportProtocol, useCase: GetListSportUseCase){
        self.view = view
        self.useCase = useCase
    }
    
    func viewIsReady() {
        useCase.execute { (transactionResult) in
            switch transactionResult {
            case .success(let list):
                print("lista de deportistas: \n",list)
                
            case .fail(let error):
                print("Error: ", error)
            }
        }
    }
    
    
    func getCell(atIndex: Int) {
        
    }
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    
    func getNumberOfRow() -> Int {
        return 1
    }
    
}
