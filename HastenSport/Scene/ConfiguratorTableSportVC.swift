//
//  ConfiguratorTableSportVC.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

protocol ConfiguratorTableSportVC {
    func configure(view: TableSportViewController, presenter: PresenterTableSportVC, useCase: GetListSportUseCase)
}

class ConfiguratorTableSportVCImplementation:ConfiguratorTableSportVC {
    
    func configure(view: TableSportViewController, presenter: PresenterTableSportVC, useCase: GetListSportUseCase) {
        let useCase = GetListSportUseCaseImplementacion()
        view.useCase = useCase
        let presenter = PresenterTableSportImplementation()
        view.presenter = presenter
    }
    
    
}
