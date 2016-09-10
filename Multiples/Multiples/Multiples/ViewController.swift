//
//  ViewController.swift
//  Multiples
//
//  Created by Robert Lowe on 9/8/16.
//  Copyright © 2016 Robert Lowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var multiple = 0
    var currentMultiple = 0

    //Outlets
    @IBOutlet weak var mLogo: UIImageView!
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pencilBtn: UIButton!
    @IBOutlet weak var multLbl: UILabel!
    
    //Actions
    
    //Hides 3 outlets and reveals 2
    @IBAction func onPlayBtn(sender: UIButton!) {
        if txtField.text != nil && txtField.text != "" {
            
            mLogo.hidden = true
            txtField.hidden = true
            playBtn.hidden = true
            
            pencilBtn.hidden = false
            multLbl.hidden = false
            
            multLbl.text = ("Tap the pencil to add!")
        }
    }
    // Adds the value of the multiple to the current sum
    @IBAction func onPencilClick(sender: UIButton!) {
        multiple = Int(txtField.text!)!
        currentMultiple += multiple
        updateLbl()
        
        if ifGameOver() {
            restartGame()}
    
    }
    //Updates the text on the label
    func updateLbl() {
        multLbl.text = ("\(currentMultiple) + ( ) + \(multiple)")
        
    }
    //Checks to see if the game is over
    func ifGameOver() -> Bool {
        if currentMultiple >= multiple * 10 {
            return true
        }
            return false
}   //Restarts the game
    func restartGame() {
        
        txtField.text = ""
        multiple = 0
        
        mLogo.hidden = false
        txtField.hidden = false
        playBtn.hidden = false
        
        pencilBtn.hidden = true
        multLbl.hidden = true
    }
}



