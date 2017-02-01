//
//  Equipements.swift
//  rpg
//
//  Created by Clément DEUST on 26/05/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Equipements: Items {

    private var _attack: Int = 100
    private var _defense: Int = 100
    private var _durability: Int = 100
    private var _bonusStat: Int = 1
    
    var attack: Int {
        get {
            return _attack
        }
        set {
            _attack = newValue
        }
    }
    
    var defense: Int {
        get {
            return _defense
        }
        set {
            _defense = newValue
        }
    }
    
    var durability: Int {
        get {
            return _durability
        }
        set{
            _durability = newValue
        }
    }
    
    var bonusStat: Int {
        get {
            return _bonusStat
        }
        set {
            _bonusStat = newValue
        }
    }
    
    convenience init(attack: Int, defense: Int, durability: Int, bonusStat: Int, equipmentPart: GearPart, normal: Bool, magic: Bool, rare: Bool, legendary: Bool, identified: Bool, usable: Bool, quantity : Int, sellValue: Int) {
        self.init(gearPart: equipmentPart,
                  normal: normal,
                  magic: magic,
                  rare: magic,
                  legendary: legendary,
                  identified: identified,
                  usable: usable,
                  quantity: quantity,
                  sellValue:  sellValue)
        self._attack = attack
        self._defense = defense
        self._durability = durability
        self._bonusStat = bonusStat
    }
    
}
