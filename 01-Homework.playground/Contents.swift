import UIKit

//*******************************************************

//Question 1
func repeatsFunc (repeatCount: Int, str: String) {
    
    }
    
repeatsFunc(repeatCount: 2, str: "aaba kouq bux")

//*******************************************************

//Question 2
var str = "Merhaba nasılsınız iyiyim siz nasılsınız ben de iyiyim"
let kelimeler = str.components(separatedBy: .whitespaces)

var kelimeVeSayilari = [String:Int]()

for kelime in kelimeler {
    if kelimeVeSayilari[kelime] == nil {
        kelimeVeSayilari[kelime] = 1
    }else{
        kelimeVeSayilari[kelime]! += 1
    }
}
print(kelimeVeSayilari)


//*******************************************************

//Question 3
//3.1
var sum = 0
for number in 1...100{
    if number % 3 == 0 || number % 5 == 0{
        print(number)
        sum += number
    }
}
print(sum)


//*******************************************************
//3.2

var x = 1
var y = 1
var z = 0
var result = 0

while z < 400 {
    z = (x+y)
    if z%2 == 0{
        result = result + z
    }
    x = y
    y = z
}
print(result)
 

//*******************************************************
//3.3


//*******************************************************
//4
/*#!/usr/bin/env swift
import Foundation

var users = ["Ali", "Veli", "Mehmet", "Kemal"]

for user in users {
print(user)
}*/

//komutları bulamadım





