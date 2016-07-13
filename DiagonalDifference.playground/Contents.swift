//: Playground - noun: a place where people can play

// https://www.hackerrank.com/challenges/diagonal-difference

import Cocoa

let n = 3
let arr : [[Int]] = [[4,2,3], [3,-4,1], [20,-2, 13]]

var primaryDiagonal = 0
var secondaryDiagonal = 0

for i in 0 ..< n {
    primaryDiagonal += arr[i][i]
    secondaryDiagonal += arr[i][(n - 1) - i]
}


let absDiff = abs(primaryDiagonal - secondaryDiagonal)