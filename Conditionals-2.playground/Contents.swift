//: Playground - noun: a place where people can play

import UIKit

var myAccount = 1000
var myFriendsAccount = 2000
var myFriendsFriendsAccount = 3000

if myAccount > 900 && myFriendsAccount > 1500 && myFriendsFriendsAccount > 2000 {
    print("We've got mucho dinero!")
}

var playerAAlive = false
var playerBAlive = true
var playerCAlive = true

if !playerAAlive || !playerBAlive || playerCAlive == false {
    print("One of your team members is down!")
}

// Can i retire????
var age = 23
var account = 50
var richUncleThatDiedLeftMeInheritance = true

if account > 70000 && age >= 60 || richUncleThatDiedLeftMeInheritance == true {
    print("You can retire!!!")
}