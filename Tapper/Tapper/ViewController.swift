//
//  ViewController.swift
//  Tapper
//
//  Created by Robert Lowe on 9/4/16.
//  Copyright © 2016 Robert Lowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps = 0
    var currentTaps = 0

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var textfieldtxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinPress(sender: UIButton!) {
    
        currentTaps+=1
        updateTapsLbl()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPressed(sender:UIButton!){
        
        if textfieldtxt.text != nil && textfieldtxt.text != "" {
        
        logoImg.hidden = true
        textfieldtxt.hidden = true
        playBtn.hidden = true
        
        tapsLbl.hidden = false
        tapBtn.hidden = false
            
        maxTaps = Int(textfieldtxt.text!)!
        currentTaps = 0
            
        updateTapsLbl()
    }
      
        
    }
    
    func restartGame() {
        maxTaps = 0
        textfieldtxt.text = ""
        
        logoImg.hidden = false
        textfieldtxt.hidden = false
        playBtn.hidden = false
        
        tapsLbl.hidden = true
        tapBtn.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    func updateTapsLbl() {
        tapsLbl.text = ("\(currentTaps) Taps")
    }

}

