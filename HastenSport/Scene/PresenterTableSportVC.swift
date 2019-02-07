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
    func getNumberOfRow(atSection: Int) -> Int
    func getNumberOfSection() -> Int
    func getName(indexPath: IndexPath) -> String
    func getSurname(indexPath: IndexPath) -> String
    func getDate(indexPath: IndexPath) -> String 
}

class PresenterTableSportImplementation: PresenterTableSportVC {
    
    private unowned let view:TableSportProtocol
    private let useCase:GetListSportUseCase
    private var list = [ListSportEntity]()
    
    init(view: TableSportProtocol, useCase: GetListSportUseCase){
        self.view = view
        self.useCase = useCase
    }
    
    func viewIsReady() {
        useCase.execute { (transactionResult) in
            switch transactionResult {
            case .success(let list):
                self.list = list
//                print("lista de deportistas: \n",list)
                self.view.reload()
            case .fail(let error):
                print("Error: ", error)
                
            }
        }
    }
    
    func getName(indexPath: IndexPath) -> String {
        return list[indexPath.section].players[indexPath.row].name
    }
    
    func getSurname(indexPath: IndexPath) -> String {
        return list[indexPath.section].players[indexPath.row].surname
    }
    
    func getDate(indexPath: IndexPath) -> String {
        return list[indexPath.section].players[indexPath.row].date ?? ""
    }
    
    func getNumberOfSection() -> Int {
        return list.count
    }
    
    func getNumberOfRow(atSection: Int) -> Int {
        return list[atSection].players.count
    }
}
