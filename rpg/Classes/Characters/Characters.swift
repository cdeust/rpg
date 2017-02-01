//
//  Characters.swift
//  rpg
//
//  Created by Clément DEUST on 26/05/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Characters {
    
    private var _hp: Int = 50;
    private var _mp: Int = 50;
    private var _strength: Int = 10;
    private var _dexterity: Int = 10;
    private var _constitution: Int = 10;
    private var _intelligence: Int = 10;
    private var _wisdom: Int = 10;
    private var _charisma: Int = 10;
    private var _defense: Int = 10;
    private var _attack: Int = 10;
    
    var hp: Int {
        get {
            return _hp
        }
        set {
            _hp = newValue
        }
    }
    
    var mp: Int {
        get {
            return _mp
        }
        set {
            _mp = newValue
        }
    }
    
    var strength: Int {
        get {
            return _strength
        }
        set {
            _strength = newValue
        }
    }
    
    var dexterity: Int {
        get {
            return _dexterity
        }
        set {
            _dexterity = newValue
        }
    }
    
    var constitution: Int {
        get {
            return _constitution
        }
        set {
            _constitution = newValue
        }
    }
    
    var intelligence: Int {
        get {
            return _intelligence
        }
        set {
            _intelligence = newValue
        }
    }
    
    var wisdom: Int {
        get {
            return _wisdom
        }
        set {
            _wisdom = newValue
        }
    }
    
    var charisma: Int {
        get {
            return _charisma
        }
        set {
            _charisma = newValue
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
    
    var attack: Int {
        get {
            return _attack
        }
        set {
            _attack = newValue
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, startingMp: Int, startingStrength: Int, startingDexterity: Int, startingConstitution: Int, startingIntelligence: Int, startingWisdom: Int, startingCharisma: Int, startingDefense: Int, startingAttack: Int) {
        self._hp = startingHp
        self._mp = startingMp
        self._strength = startingStrength
        self._dexterity = startingDexterity
        self._constitution = startingConstitution
        self._intelligence = startingIntelligence
        self._wisdom = startingWisdom
        self._charisma = startingCharisma
        self._defense = startingDefense
        self._attack = startingAttack
    }
    
    func attack(attack: Int) -> Bool {
        self._hp -= attack
        return true
    }
}