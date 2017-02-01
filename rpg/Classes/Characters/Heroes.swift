//
//  Heroes.swift
//  rpg
//
//  Created by Clément DEUST on 26/05/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Heroes: Characters {
    
    private var _name: String = "Player Name"
    private var _equipment: [String] = [String]()
    private var _inventory: [String] = [String]()
    private var _abilities: [String] = [String]()
    private var _advancedClass: Bool = false
    private var _married: Bool = false
    private var _startingGold: Int = 500
    private var _socialRecognition: Int = 0
    
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }
    
    var equipment: [String] {
        get {
            return _equipment    
        }
        set {
            _equipment = newValue
        }
    }
    
    var inventory: [String] {
        get {
            return _inventory
        }
        set {
            _inventory = newValue
        }
    }
    
    var abilities: [String] {
        get {
            return _abilities    
        }
        set {
            _abilities = newValue
        }
    }
    
    var advancedClass: Bool {
        get {
            return _advancedClass
        }
        set {
            _advancedClass = newValue
        }
    }
    
    convenience init(startingName: String, advancedClass: Bool, maried: Bool, startingGold: Int, socialRecognition: Int, startingHp: Int, startingMp: Int, startingStrength: Int, startingDexterity: Int, startingConstitution:Int, startingIntelligence: Int, startingWisdom: Int, startingCharisma: Int, startingDefense: Int, startingAttack: Int) {
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
        self._name = startingName
        self._advancedClass = advancedClass
        self._married = maried
        self._startingGold = startingGold
        self._socialRecognition = socialRecognition
    }
    
}