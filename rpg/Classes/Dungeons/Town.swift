//
//  Town.swift
//  rpg
//
//  Created by User on 30/05/2016.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Town: Map {
    
    private var _merchantsNumber: Int = 5
    private var _townPeopleNumber: Int = 25
    private var _classMasterNumber: Int = 4
    private var _advancedClassMasterNumber: Int = 8
    private var _houseNumber: Int = 15
    
    var merchantsNumber: Int {
        get {
            return _merchantsNumber
        }
        set {
            _merchantsNumber = newValue
        }
    }
    
    var townPeopleNumber: Int {
        get {
            return _townPeopleNumber
        }
        set {
            _townPeopleNumber = newValue
        }
    }
    
    var classMasterNumber: Int {
        get {
            return _classMasterNumber
        }
        set {
            _classMasterNumber = newValue
        }
    }
    
    var advancedClassMasterNumber: Int {
        get {
            return _advancedClassMasterNumber
        }
        set {
            _advancedClassMasterNumber = newValue
        }
    }
    
    var houseNumber: Int {
        get {
            return _houseNumber
        }
        set {
            _houseNumber = newValue
        }
    }
    
    convenience init(merchantsNumber: Int, townPeopleNumber: Int, classMasterNumber: Int, advancedClassMasterNumber: Int, startingName: String, startingDifficulty: Difficulty, type: String, size: Size) {
        self.init(startingDifficulty: startingDifficulty,
                  type: type,
                  size: size)
        self._merchantsNumber = merchantsNumber
        self._townPeopleNumber = townPeopleNumber
        self._classMasterNumber = classMasterNumber
        self._advancedClassMasterNumber = advancedClassMasterNumber
    }
}
