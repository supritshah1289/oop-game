//
//  ViewController.swift
//  GameOOP
//
//  Created by supritkumar shah on 1/6/16.
//  Copyright © 2016 supritkumar shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHPLbl: UILabel!

    @IBOutlet weak var enemyHPLbl: UILabel!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String? // var stores loot dropped by enemy and its optional
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "Lightning Stromer", HP: 110, attackPwr: 20)
        
        generateRandomEnemy()
        
        playerHPLbl.text = "\(player.HP) HP"
        
    }
    
    func generateRandomEnemy(){
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0{
            enemy = Kimara(startingHP: 50, attackPwr: 12)
        } else {
            enemy = devilWizard(startingHP: 60, attackPwr: 15)
        }
        enemyImg.hidden = false
        
    }
    
    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
        
        
    }
    
    @IBAction func attackTapped(sender: AnyObject) {
   
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr)  HP"
            enemyHPLbl.text = "\(enemy.HP) HP"
            
        }else {
            printLbl.text = "Attack was unsuccessful"
        }
        
        
        if let loot = enemy.dropLoot(){
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
            
        }
        
        if !enemy.isAlive {
            enemyHPLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
        }
    
    }
    
}

