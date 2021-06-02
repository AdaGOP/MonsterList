//
//  MonsterListViewController.swift
//  MonsterList
//
//  Created by Handy Handy on 02/06/21.
//

import UIKit

class MonsterListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var monsterListTableView: UITableView!
    
    let monsters = [
        Monster(name: "Gloop", age: 1, type: .water),
        Monster(name: "Hive", age: 2, type: .air),
        Monster(name: "Rediest", age: 2, type: .fire)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        monsterListTableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return monsters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "monsterListIdentifier") as! MonsterListTableViewCell
        
        cell.mView.layer.cornerRadius = 8
        cell.mView.backgroundColor = monsters[indexPath.row].type?.getColor()
        cell.monsterImageView.image = monsters[indexPath.row].type?.getImage()
        cell.nameLabel.text = monsters[indexPath.row].name
        cell.typeLabel.text = monsters[indexPath.row].type?.rawValue
        
        cell.selectionStyle = .none
        
        return cell
    }
    
}
