//: Playground - noun: a place where people can play

import Cocoa

//https://www.hackerrank.com/challenges/array-left-rotation

let input = [5, 4, 1, 2, 3, 4, 5]
let array = Array(input[2..<input.count])
let numberOfRotations = input[1]

enum Orientation {
    case Left, Right
}

func _rotate(array: [Int], numberOfTimes: Int, orientation: Orientation) -> [Int] {

    guard numberOfTimes != 0 else { return array }

    var temp = array
    switch orientation {

    case .Left:
        let firstElement = temp.removeFirst()
        temp = temp + [firstElement]
    case .Right:
        let lastElement = temp.removeLast()
        temp = [lastElement] + temp
    }

    return _rotate(temp, numberOfTimes: numberOfTimes - 1, orientation: orientation)
}

func rotate(array: [Int], numberOfTimes: Int) -> [Int] {

    let normalizedNumber = numberOfTimes % array.count

    let temp = (array.count - normalizedNumber)
    let shouldGoRight = temp < normalizedNumber

    if shouldGoRight {
        return _rotate(array, numberOfTimes: temp, orientation: .Right)
    }
    else {
       return _rotate(array, numberOfTimes: normalizedNumber, orientation: .Left)
    }
}

rotate(array, numberOfTimes: 2)
