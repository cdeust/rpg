//
//  SamuraiAnimation.swift
//  rpg
//
//  Created by Clément DEUST on 04/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import Foundation

extension FightViewController {
    
    func idleAnimation() {
        
        self.samuraiImg.stopAnimating()
        
        let imageArray = self.getIdleImageArray()
        self.samuraiImg.animationImages = imageArray
        self.samuraiImg.animationDuration = 0.5
        self.samuraiImg.animationRepeatCount = 0
        self.samuraiImg.startAnimating()
        
    }
    
    func attackAnimation() {
        
        self.samuraiImg.stopAnimating()
        
        let imageArray = self.getNormalAttackImageArray()
        self.samuraiImg.animationImages = imageArray
        self.samuraiImg.animationDuration = 0.5
        self.samuraiImg.animationRepeatCount = 1
        self.samuraiImg.startAnimating()
        
        globalTimer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(FightViewController.idleAnimation), userInfo: nil, repeats: false)
    }
    
    func stabAnimation() {
        
        self.samuraiImg.stopAnimating()
        
        let imageArray = self.getStabAttackImageArray()
        self.samuraiImg.animationImages = imageArray
        self.samuraiImg.animationDuration = 0.5
        self.samuraiImg.animationRepeatCount = 1
        self.samuraiImg.startAnimating()
        
        globalTimer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(FightViewController.idleAnimation), userInfo: nil, repeats: false)
    }
    
    func comboAnimation() {
        
        self.samuraiImg.stopAnimating()
        
        let imageArray = self.getComboAttackImageArray()
        self.samuraiImg.animationImages = imageArray
        self.samuraiImg.animationDuration = 1.5
        self.samuraiImg.animationRepeatCount = 1
        self.samuraiImg.startAnimating()
        
        globalTimer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: #selector(FightViewController.idleAnimation), userInfo: nil, repeats: false)
    }
    
    func defendAnimation() {
        
        self.samuraiImg.stopAnimating()
        
        let imageArray = self.getDefendImageArray()
        self.samuraiImg.animationImages = imageArray
        self.samuraiImg.animationDuration = 1.5
        self.samuraiImg.animationRepeatCount = 1
        self.samuraiImg.startAnimating()
        
        globalTimer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: #selector(FightViewController.idleAnimation), userInfo: nil, repeats: false)
    }
    
    func escapeAnimation() {
        
        self.samuraiImg.stopAnimating()
        
        let imageArray = self.getEscapeImageArray()
        self.samuraiImg.animationImages = imageArray
        self.samuraiImg.animationDuration = 0.5
        self.samuraiImg.animationRepeatCount = 0
        self.samuraiImg.startAnimating()
        
        globalTimer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: #selector(FightViewController.idleAnimation), userInfo: nil, repeats: false)
    }
}

extension FightViewController {

    func getIdleImageArray() -> [UIImage] {
        
        var imageArray = [UIImage]()
        for i in 0...23 {
            let image = UIImage(named: "Idle_\(i).png")
            imageArray.append(image!)
        }
        
        return imageArray
    }
    
    func getNormalAttackImageArray() -> [UIImage] {
     
        var imageArray = [UIImage]()
        for i in 0...11 {
            let image = UIImage(named: "Attacking_\(i).png")
            imageArray.append(image!)
        }
        
        return imageArray
    }
    
    func getStabAttackImageArray() -> [UIImage] {
        
        var imageArray = [UIImage]()
        for i in 0...17 {
            let image = UIImage(named: "Stabbing_\(i).png")
            imageArray.append(image!)
        }
        
        return imageArray
    }
    
    func getComboAttackImageArray() -> [UIImage] {
        
        var imageArray = [UIImage]()
        for i in 0...11 {
            let image = UIImage(named: "Attacking_\(i).png")
            imageArray.append(image!)
        }
        for i in 0...17 {
            let image = UIImage(named: "Stabbing_\(i).png")
            imageArray.append(image!)
        }
        for i in 0...11 {
            let image = UIImage(named: "Attacking_\(i).png")
            imageArray.append(image!)
        }
        
        return imageArray
    }
    
    func getDefendImageArray() -> [UIImage] {
        
        var imageArray = [UIImage]()
        for i in 0...23 {
            let image = UIImage(named: "Defending_\(i).png")
            imageArray.append(image!)
        }
        
        return imageArray
    }
    
    func getEscapeImageArray() -> [UIImage] {
        
        var imageArray = [UIImage]()
        for i in 0...17 {
            let image = UIImage(named: "Running_\(i).png")
            imageArray.append(image!)
        }
        
        return imageArray
    }
}