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
    
    var globalTimer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.idleAnimation()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

extension FightViewController {
    
    @IBAction func attackPressed(sender: UIButton) {
        self.attackAnimation()
    }
    
    @IBAction func defendPressed(sender: UIButton) {
        self.defendAnimation()
    }
    
    @IBAction func comboPressed(sender: UIButton) {
        self.comboAnimation()
    }
    
    @IBAction func escapePressed(sender: UIButton) {
        self.escapeAnimation()
    }
}