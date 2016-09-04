//: Playground - noun: a place where people can play

import UIKit

func funkA(){
    print("Calling funkB")
    funkB()
}

func funkB(){
    print("Calling funkC")
    funkC()
}

func funkC(){
    print("I am the best function of all")
}
funkA()



var bankAccount = 350.50
var itemAmount = 320.20

func canPurchase(amount: Double) -> Bool {
    if bankAccount >= amount {
        return true
    }
        return false
}

func processPayment(amt: Double) {
    bankAccount -= amt
    print("You have just made a purchase of \(amt)")
}

if canPurchase(itemAmount){
    processPayment(itemAmount)
} else {
    print("Insufficient Funds")
}

var name = "sweeny todd"


func getUpperVersion(inputStr: String) -> String {
    return inputStr.uppercaseString
}
var nameUpper = getUpperVersion(name)

func declareWinner(playerAScore : Int, playerBScore : Int) {
    if playerAScore > playerBScore{
        print("Player A Wins")
    } else if playerBScore > playerAScore{
        print("Player B wins")
    } else {
        print("The game is at a standstill")
        
    }
        
    }

    declareWinner(60, playerBScore: 60)