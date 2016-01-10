//
//  Enemy.swift
//  GameOOP
//
//  Created by supritkumar shah on 1/6/16.
//  Copyright © 2016 supritkumar shah. All rights reserved.
//

import Foundation
import UIKit

class Enemy: Character{

    var loot: [String]{
    
        return ["Rusty Dagger", "Cracked Buggler"]
    }
    
    var type: String {
        return "Mugambooo"
    }
    
    
    func dropLoot() -> String? {
        
        if !isAlive{
              let rand = Int(arc4random_uniform(UInt32(loot.count)))
            
            return loot[rand]
            
        }
        return nil
    }
    
}