//
//  ViewController.swift
//  Tapper
//
//  Created by Robert Lowe on 9/4/16.
//  Copyright © 2016 Robert Lowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
var currentTaps = 0
var maxTaps = 0

    @IBOutlet weak var tapperLogo: UIImageView!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var coinBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!

    @IBAction func oncCoinPress(sender: UIButton!) {
        currentTaps += 1
        updateLbl()
        
        if isGameOver(){
            restartGame()
        }}
    
    @IBAction func onPlayButtonPress(sender: UIButton!) {
        
        if textfield.text != nil &&  textfield.text != "" {
            
        tapperLogo.hidden = true
        textfield.hidden = true
        playBtn.hidden = true
        
        coinBtn.hidden = false
        tapsLbl.hidden = false
            
        maxTaps = Int(textfield.text!)!
        currentTaps = 0

        updateLbl()
        
        }
    
    }
    func updateLbl() {
            tapsLbl.text = ("\(currentTaps) Taps")
}
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
            return false
        }
    
    
    func restartGame() {
        
        textfield.text = ""
        maxTaps = 0
        
        tapperLogo.hidden = false
        textfield.hidden = false
        playBtn.hidden = false
        
        coinBtn.hidden = true
        tapsLbl.hidden = true
        
    }
}

