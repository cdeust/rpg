//
//  Pets.swift
//  rpg
//
//  Created by Clément DEUST on 02/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Pets: Characters {
    
    enum Pattern: String {
        case Attack = "Attack"
        case Defend = "Defend"
        case Support = "Support"
        case Heal = "Heal"
        case Combo = "Combo"
        case None = ""
    }
    
    private var _name: String = "Pet name"
    private var _abilities: [String] = [String]()
    private var _pattern: Pattern = Pattern.None
    
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
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
    
    var pattern: Pattern {
        get {
            return _pattern
        }
        set {
            _pattern = newValue
        }
    }
}
