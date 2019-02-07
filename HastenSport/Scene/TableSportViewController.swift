//
//  ViewController.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import UIKit

class TableSportViewController: UIViewController {

    var useCase: GetListSportUseCase!
    var presenter: PresenterTableSportVC!
    let configurator = ConfiguratorTableSportVCImplementation()
    var numberOfCell:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(view: self, presenter: presenter, useCase: useCase)
    }
}

extension TableSportViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellSport")
            else {return UITableViewCell()}
        
        return cell
    }
}

