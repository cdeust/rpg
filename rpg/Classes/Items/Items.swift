//
//  Items.swift
//  rpg
//
//  Created by Clément DEUST on 26/05/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import Foundation

class Items {
    
    enum GearPart: String {
        case Head = "head"
        case Body = "body"
        case Shoulder = "shoulder"
        case Wrist = "wrist"
        case Gloves = "gloves"
        case Pants = "pants"
        case Boots = "boots"
        case Weapon = "weapon"
        case Shield = "shield"
        case LeftRing = "left ring"
        case RightRing = "right ring"
        case Necklace = "necklace"
        case None = ""
    }
    
    private var _gearPart: GearPart = GearPart.None
    private var _normal: Bool = true;
    private var _magic: Bool = false
    private var _rare: Bool = false
    private var _legendary: Bool = false
    private var _identified: Bool = false
    private var _usable: Bool = false
    private var _quantity: Int = 1
    private var _sellValue: Int = 10
    
    var gearPart: GearPart {
        get {
            return _gearPart
        }
        set {
            _gearPart = newValue
        }
    }
    
    var normal: Bool {
        get {
            return _normal
        }
        set {
            _normal = newValue
        }
    }
    
    var magic: Bool {
        get {
            return _magic
        }
        set {
            _magic = newValue
        }
    }
    
    var rare: Bool {
        get {
            return _rare
        }
        set {
            _rare = newValue
        }
    }
    
    var legendary: Bool {
        get {
            return _legendary
        }
        set {
            _legendary = newValue
        }
    }
    
    var identified: Bool {
        get {
            return _identified
        }
        set {
            _identified = newValue
        }
    }
    
    var usable: Bool {
        get {
            return _usable
        }
        set {
            _usable = newValue
        }
    }
    
    var quantity: Int {
        get {
            return _quantity
        }
        set {
            _quantity = newValue
        }
    }
    
    var sellValue: Int {
        get {
            return _sellValue
        }
        set {
            _sellValue = newValue
        }
    }
    
    init(gearPart: GearPart, normal: Bool, magic: Bool, rare: Bool, legendary: Bool, identified: Bool, usable: Bool, quantity: Int, sellValue: Int) {
        self._gearPart = gearPart
        self._normal = normal
        self._magic = magic
        self._rare = rare
        self._legendary = legendary
        self._identified = identified
        self._usable = usable
        self._quantity = quantity
        self._sellValue = sellValue
    }
}
