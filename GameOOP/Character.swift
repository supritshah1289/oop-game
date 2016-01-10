//
//  Character.swift
//  GameOOP
//
//  Created by supritkumar shah on 1/6/16.
//  Copyright © 2016 supritkumar shah. All rights reserved.
//

import Foundation

class Character {

        //character can have Health, Attack Power
        //  private keyword is used for data hiding and to update hidden data getters and setters used.
    private var _HP: Int = 100
    private var _attackPwr: Int = 10
    
    var HP: Int {
        
        get {
            return _HP
        }
        
    }
    
    var attackPwr: Int{
        get {
            return _attackPwr
        }
    }
    
    
    init (startingHP: Int, attackPwr: Int) {
        self._attackPwr = attackPwr
        self._HP = startingHP
    }
    
    //checking character's Health if its >= 0 then character is dead
    var isAlive: Bool {
        get {
            if HP <= 0 {
                return false
            }
            else {
                return true
                
            }
        }
        
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._HP -= attackPwr
        
        return true
    }

    
}