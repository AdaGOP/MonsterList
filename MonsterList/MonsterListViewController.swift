//
//  MonsterListViewController.swift
//  MonsterList
//
//  Created by Handy Handy on 02/06/21.
//

import UIKit

class MonsterListViewController: UIViewController {
    
    let monsters = [
        Monster(name: "Gloop", age: 1, type: .water),
        Monster(name: "Hive", age: 2, type: .air),
        Monster(name: "Rediest", age: 2, type: .fire)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
