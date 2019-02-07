//
//  ViewController.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import UIKit

protocol TableSportProtocol: class {
    
}

class TableSportViewController: UIViewController {

    var presenter: PresenterTableSportVC?
    let configurator = ConfiguratorTableSportVCImplementation()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        configurator.configure(view: self)
        presenter?.viewIsReady()
    }
}

extension TableSportViewController: TableSportProtocol {
    
}

extension TableSportViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getNumberOfRow() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellSport") as? PlayerTableViewCell
            else {return UITableViewCell()}
        
        return cell
    }
}

