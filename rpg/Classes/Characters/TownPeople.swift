//
//  TownPeople.swift
//  rpg
//
//  Created by User on 30/05/2016.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class TownPeople : Characters {
    private var _name: String = "Town People name"
    private var _workingStartTime: Int = 8
    private var _workingEndTime: Int = 20
    private var _job: String = "None"
    private var _specialActionPrice: Int = 500
    
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }
    
    var workingStartTime: Int {
        get {
            return _workingStartTime
        }
        set {
            _workingStartTime = newValue
        }
    }
    
    var workingEndTime: Int {
        get {
            return _workingEndTime
        }
        set {
            _workingEndTime = newValue
        }
    }
    
    var job: String {
        get {
            return _job
        }
        set {
            _job = newValue
        }
    }
    
    var specialActionPrice: Int {
        get {
            return _specialActionPrice
        }
        set {
            _specialActionPrice = newValue
        }
    }
    
    convenience init(name: String, workingStartTime: Int, workingEndTime: Int, job: String, specialActionPrice: Int ,startingHp: Int, startingMp: Int, startingStrength: Int, startingDexterity: Int, startingConstitution:Int, startingIntelligence: Int, startingWisdom: Int, startingCharisma: Int, startingDefense: Int, startingAttack: Int) {
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
        self._name = name
        self._workingStartTime = workingStartTime
        self._workingEndTime = workingEndTime
        self._job = job
        self._specialActionPrice = specialActionPrice
    }
}