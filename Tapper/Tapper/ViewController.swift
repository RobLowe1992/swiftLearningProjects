//
//  ViewController.swift
//  Tapper
//
//  Created by Robert Lowe on 9/4/16.
//  Copyright © 2016 Robert Lowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var textfieldtxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayButtonPressed(sender:UIButton!){
        logoImg.hidden = true
        textfieldtxt.hidden = true
        playBtn.hidden = true
        
        tapsLbl.hidden = false
        tapBtn.hidden = false
    }
    
    


}

