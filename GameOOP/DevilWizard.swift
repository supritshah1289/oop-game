//
//  DevilWizard.swift
//  GameOOP
//
//  Created by supritkumar shah on 1/6/16.
//  Copyright © 2016 supritkumar shah. All rights reserved.
//

import Foundation

class devilWizard: Enemy {
    
    override var loot: [String]{
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "DevilWizard"
    }
    
    
}