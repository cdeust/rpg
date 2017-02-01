//
//  Bosses.swift
//  rpg
//
//  Created by Clément DEUST on 26/05/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Bosses : Enemies {
    
    private var _lootTable: [String] = [String]()
    private var _type: String = ""
    private var _numberOfPattern: Int = 3
    private var _currentPattern: Int = 2
    private var _specialAction: [String] = [String]()
    private var _hpPercent: Int = 25
    private var _mpPercent: Int = 0
    
    let immunity = 15
    
    override var lootTable: [String] {
        get {
            return _lootTable
        }
        set {
            _lootTable = newValue
        } 
    }
    
    override var type: String {
        get {
            return _type
        }
        set {
            _type = newValue
        }
    }
    
    var numberOfPattern: Int {
        get {
            return _numberOfPattern
        }
        set {
            _numberOfPattern = newValue
        }
    }
    
    var currentPattern: Int {
        get {
            return _currentPattern
        }
        set {
            _currentPattern = newValue
        }
    }
    
    var specialAction: [String] {
        get {
            return _specialAction
        }
        set {
            _specialAction = newValue
        }
    }
    
    var hpPercent: Int {
        get {
            return _hpPercent
        }
        set {
            _hpPercent = newValue
        }
    }
    
    var mpPercent: Int {
        get {
            return _mpPercent
        }
        set {
            _mpPercent = newValue
        }
    }
    
    override func attack(attack: Int) -> Bool {
        if attack >= immunity {
            return super.attack(attack)
        } else {
            return false
        }
    }
}