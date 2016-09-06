//: Playground - noun: a place where people can play

import UIKit

var bankAccount = 150.50
var itemAmount = 230.20

func canProcess(amount: Double) -> Bool {
    if bankAccount >= amount {
        return true
    }
        return false
}
func processPayment(amt: Double){
    bankAccount -= amt
    print("You have been charged an amount of \(amt)")
}
if canProcess(itemAmount){
    processPayment(itemAmount)
}   else {
    print("Insufficient Funds")
}
