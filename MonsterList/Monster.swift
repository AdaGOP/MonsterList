//
//  Monster.swift
//  MonsterList
//
//  Created by Handy Handy on 02/06/21.
//

import Foundation
import UIKit

enum MonsterType: String, CaseIterable {
    case fire = "Fire"
    case water = "Water"
    case earth = "Earth"
    case air = "Air"
    case metal = "Metal"
    case tree = "Tree"
    
    func getColor() -> UIColor? {
        switch self {
        case .fire:
            return UIColor(named: "MBRed")
        case .water:
            return UIColor(named: "MBPurple")
        case .earth:
            return UIColor(named: "MBBrown")
        case .air:
            return UIColor(named: "MBBlue")
        case .metal:
            return UIColor(named: "MBGray")
        case .tree:
            return UIColor(named: "MBGreen")
        }
    }
    
    func getImage() -> UIImage {
        switch self {
        case .fire:
            return #imageLiteral(resourceName: "Monster Merah")
        case .water:
            return #imageLiteral(resourceName: "Monster Biru Muda")
        case .earth:
            return #imageLiteral(resourceName: "Monster Kuning Bulet")
        case .air:
            return #imageLiteral(resourceName: "Monster Ungu Bulet")
        case .metal:
            return #imageLiteral(resourceName: "Monster Hitam")
        case .tree:
            return #imageLiteral(resourceName: "Monster Pohon")
        }
    }
}

class Monster {
    let id: String = UUID().uuidString
    var name: String?
    var age: Int?
    var description: String?
    var type: MonsterType?
    var isFavorite: Bool
    
    init(name: String?, age: Int?, description: String?, type: MonsterType) {
        self.name = name
        self.description = description
        self.age = age
        self.type = type
        self.isFavorite = false
    }
    
}
