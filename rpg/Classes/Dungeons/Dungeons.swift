//
//  Dungeons.swift
//  rpg
//
//  Created by User on 30/05/2016.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Dungeons: Map {
    
    private var _name: String = "Azure's Tower"
    private var _enemiesNumberBeforeBoss: Int = 50
    private var _bossNumber: Int = 5
    private var _numberOfFloor: Int = 100
    
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }
    
    var enemiesNumberBeforeBoss: Int {
        get {
            return _enemiesNumberBeforeBoss
        }
        set {
            _enemiesNumberBeforeBoss = newValue
        }
    }
    
    var bossNumber: Int {
        get {
            return _bossNumber
        }
        set {
            _bossNumber = newValue
        }
    }
    
    var numberOfFloor: Int {
        get {
            return _numberOfFloor
        }
        set {
            _numberOfFloor = newValue
        }
    }
    
    convenience init(startingName: String, enemiesNumberBeforeBoss: Int, bossNumber: Int, numberOfFloor: Int, startingDifficulty: Difficulty, type: String, size: Size) {
        self.init(startingDifficulty: startingDifficulty,
                  type: type, 
                  size: size)
        self._name = startingName
        self._enemiesNumberBeforeBoss = enemiesNumberBeforeBoss
        self._bossNumber = bossNumber
        self._numberOfFloor = numberOfFloor
    }    
}
