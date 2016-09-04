//: Playground - noun: a place where people can play

import UIKit

var bankAccount = 550
var itemAmount = 325

func canPurchase(amount: Double) -> Bool {
    if bankAccount >= amount {
        return true
}
        return false
}

func processPurchase(amount: Double) {
    bankAccount -= amt
    print("You made a purchase of the amount \(amt)")
    
    if canPurchase(itemAmount) {
        processPurchase(itemAmount)
    } else {
        print("Insufficient funds")
    }
}