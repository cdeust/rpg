//
//  FightViewController.swift
//  rpg
//
//  Created by Clément DEUST on 26/05/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import Foundation

class FightViewController: UIViewController {
    
    @IBOutlet weak var samuraiImg: UIImageView!
    @IBOutlet weak var attackBtn: UIButton!
    @IBOutlet weak var defenseBtn: UIButton!
    @IBOutlet weak var comboBtn: UIButton!
    @IBOutlet weak var escapeBtn: UIButton!
    
    var globalTimer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.idleAnimation()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

extension FightViewController {
    
    @IBAction func attackPressed(_ sender: UIButton) {
        self.attackAnimation()
    }
    
    @IBAction func defendPressed(_ sender: UIButton) {
        self.defendAnimation()
    }
    
    @IBAction func comboPressed(_ sender: UIButton) {
        self.comboAnimation()
    }
    
    @IBAction func escapePressed(_ sender: UIButton) {
        self.escapeAnimation()
    }
}
