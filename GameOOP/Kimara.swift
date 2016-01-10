//
//  Kimara.swift
//  GameOOP
//
//  Created by supritkumar shah on 1/6/16.
//  Copyright © 2016 supritkumar shah. All rights reserved.
//

import Foundation

class Kimara: Enemy{

    let IMMUNE_MAX = 15
    
    override var loot: [String]{
        return ["Tough Hide", "Rare Trident", "Kimara Venom"]
    }
    
    
    override var type: String{
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        
        if attackPwr >= IMMUNE_MAX {
        return super.attemptAttack(attackPwr)
        }
        else {
            return false
        }
    }
    
}