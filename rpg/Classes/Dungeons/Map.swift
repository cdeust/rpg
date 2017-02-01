//
//  Map.swift
//  rpg
//
//  Created by User on 30/05/2016.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Map {
    
    enum Difficulty: String {
        case Impossible = "Impossible"
        case Insane = "Insane"
        case Hard = "Hard"
        case Medium = "Medium"
        case Normal = "Normal"
        case Easy = "Easy"
        case None = ""
    }
    
    enum Size: String {
        case Large = "Large"
        case Medium = "Medium"
        case Normal = "Normal"
        case Tiny = "Tiny"
        case None = ""
    }
    
    private var _difficulty: Difficulty = Difficulty.None
    private var _type: String = "Azure Dreams"
    private var _size: Size = Size.None
    
    var difficulty: Difficulty {
        get {
            return _difficulty
        }
        set {
            _difficulty = newValue
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
    
    var size: Size {
        get {
            return _size
        }
        set {
            _size = newValue
        }
    }
    
    init(startingDifficulty: Difficulty, type: String, size: Size) {
        self._difficulty = startingDifficulty
        self._type = type
        self._size = size
    }
}
