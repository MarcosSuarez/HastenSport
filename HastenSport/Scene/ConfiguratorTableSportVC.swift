//
//  ConfiguratorTableSportVC.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

protocol ConfiguratorTableSportVC {
    func configure(view: TableSportViewController)
}

class ConfiguratorTableSportVCImplementation:ConfiguratorTableSportVC {
    
    func configure(view: TableSportViewController) {
        let useCase = GetListSportUseCaseImplementacion()
        let presenter = PresenterTableSportImplementation(view: view, useCase: useCase)
        view.presenter = presenter
    }
    
    
}
