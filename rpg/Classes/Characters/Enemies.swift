//
//  Enemies.swift
//  rpg
//
//  Created by Clément DEUST on 26/05/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Enemies: Characters {

    private var _lootTable: [String] = [String]()
    private var _type: String = "Wizard"
    private var _family: String = "Goblin"
    
    var lootTable: [String] {
        get {
            return _lootTable    
        }
        set {
            _lootTable = newValue
        }
    }
    
    var type: String {
        get {
            return _type
        }
        set {
            _type = newValue
        }
    }
    
    func loot (_ type: String) -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(lootTable.count)))
            return lootTable[rand]
        }
        return nil
    }
    
    convenience init(lootTable: [String], type: String, family: String, startingHp: Int, startingMp: Int, startingStrength: Int, startingDexterity: Int, startingConstitution: Int, startingIntelligence: Int, startingWisdom: Int, startingCharisma: Int, startingDefense: Int, startingAttack: Int) {
        self.init(startingHp: startingHp,
                  startingMp: startingMp,
                  startingStrength: startingStrength,
                  startingDexterity: startingDexterity,
                  startingConstitution: startingConstitution,
                  startingIntelligence: startingIntelligence,
                  startingWisdom: startingWisdom,
                  startingCharisma: startingCharisma,
                  startingDefense: startingDefense,
                  startingAttack: startingAttack)
        self._lootTable = lootTable
        self._type = type
        self._family = family
    }
}
