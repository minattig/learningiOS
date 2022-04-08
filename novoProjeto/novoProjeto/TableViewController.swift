//
//  TableViewController.swift
//  novoProjeto
//
//  Created by Gustavo Minatti on 07/04/22.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var event: UILabel!
    @IBOutlet var name: UITextField!
    
    var listOfNames = [String]()
    
    @IBAction func add(_ sender: UIBarButtonItem) {
//        name.text = String
        listOfNames.append(name.text ?? "")
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listOfNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = listOfNames[indexPath.row]
    
        return cell
    }
}

