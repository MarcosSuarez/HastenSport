//
//  File.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

protocol PresenterTableSportVC:class {
    func getNumberOfRow() -> Int
    func getCell(atIndex: Int)
    func getNumberOfSection() -> Int
}

class PresenterTableSportImplementation: PresenterTableSportVC {
    
    func getCell(atIndex: Int) {
        
    }
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    
    func getNumberOfRow() -> Int {
        return 1
    }
    
}
