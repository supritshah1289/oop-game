//
//  Player.swift
//  GameOOP
//
//  Created by supritkumar shah on 1/7/16.
//  Copyright © 2016 supritkumar shah. All rights reserved.
//

import Foundation

class Player: Character{
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        get{
            return _inventory
        }
    }
    
    func addItemToInventory(item: String){
        _inventory.append(item)
    }
    
    convenience init(name: String, HP: Int, attackPwr: Int) {
        self.init(startingHP: HP, attackPwr: attackPwr)
        _name = name
    }
    
    
    
}