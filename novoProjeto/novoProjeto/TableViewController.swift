//
//  TableViewController.swift
//  novoProjeto
//
//  Created by Gustavo Minatti on 15/04/22.
//

import UIKit

class TableViewController: UIViewController {

    var receiveText: String?

    @IBOutlet var tableView: UITableView!
    
    let names = [
                "Minatti",
                "Thay",
                "Laura",
                "Age"
                ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let selectName = segue.destination as! ShowerViewController
        
          
          selectName.text = receiveText
        
//        if let newText = receiveText {
//            selectName.text = newText
//        }
        
        
    }
    
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as? NameTableTableViewCell
        
        cell?.nameLabel?.text = names[indexPath.row]
        
        return cell ?? UITableViewCell()
    }


}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        receiveText = names[indexPath.row]
//        print(names[indexPath.row])
    }
    
    
    
}
