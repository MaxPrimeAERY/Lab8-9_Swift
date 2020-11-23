//
//  main.swift
//  Lab8-9_Swift
//
//  Created by Admin on 23.11.2020.
//

import Foundation
import Cocoa

//Lab8
func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if closure(banknot) {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}

// функція порівняння із числом 100
func compare100(banknot: Int) -> Bool {
    return banknot == 100
}

// функція порівняння із числом 1000
func compareMore1000(banknot: Int) -> Bool {
    return banknot >= 1000
}

var wallet = [10, 50, 100, 100, 5000, 100, 50, 50, 500, 100]
print("My 100 comparison = \(handle(wallet: wallet, closure: compare100))")
print("My 1000 comparison = \(handle(wallet: wallet, closure: compareMore1000))")

// відбір купюр номіналом вище 200 гривень
handle(wallet: wallet, closure: {(banknot: Int) -> Bool in
    return banknot>=200
})
// відбір купюр номіналом 100 гривень
handle(wallet: wallet, closure: {(banknot: Int) -> Bool in
    return banknot==100
})

var array = [1,44,81,4,277,50,101,51,8]
var sortedArray = array.sorted(by: <)
print("Sorted array = \(sortedArray)")

//Lab9
var oldArray = [ 2, 4, 5, 7]
var newArray = oldArray.map{$0*$0}
print("New array = \(newArray)")

let someArray = [[1, 2, 3, 4, 5], [11, 44, 1, 6], [16, 403, 321, 10]]
//flatMap теперь compactMap
let filterSomeArray = someArray.compactMap({$0.filter{ $0 % 2 == 0}})
print("New filteredArray = \(filterSomeArray)")

let numbers = [1, 4, 10, 15]
let even = numbers.filter{ $0 % 2 == 0 }
print("Even = \(filterSomeArray)")

let cash = [10, 50, 100, 500]
let total = cash.reduce(210, +)
print("Total = \(total)")
