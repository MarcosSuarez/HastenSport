//
//  ViewController.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import UIKit

protocol TableSportProtocol: class {
    func reload()
    func alert(message: String)
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
    
    func reload() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func alert(message: String) {
        let alertView = UIAlertController(title: "ERROR", message: message, preferredStyle: .alert)
        let buttonOK = UIAlertAction(title: "OK", style: .default) { (alertAction) in
            self.dismiss(animated: true)
        }
        alertView.addAction(buttonOK)
        present(alertView, animated: true)
    }
}

extension TableSportViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter?.getNumberOfSection() ?? 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getNumberOfRow(atSection: section) ?? 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return presenter?.getHeader(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellSport") as? PlayerTableViewCell
            else {return UITableViewCell()}
        cell.labelName.text = presenter?.getName(indexPath: indexPath)
        cell.labelSurname.text = presenter?.getSurname(indexPath: indexPath)
        cell.labelBirthday.text = presenter?.getDate(indexPath: indexPath)
        let path = presenter?.getImagePath(indexPath: indexPath) ?? ""
        cell.setPhoto(path: path)
        
        return cell
    }
}

