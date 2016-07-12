//: Playground - noun: a place where people can play

import Cocoa

Heap's Algorithm
https://en.wikipedia.org/wiki/Heap%27s_algorithm

final class MyArray<T>: CustomDebugStringConvertible {

    private var array: Array<T>

    init(array: Array<T>){
        self.array = array
    }

    subscript(index: Int) -> T {
        get {
            return array[index]
        }
        set(newValue) {

            array[index] = newValue
        }
    }

    func swap(f: Int, s: Int) {
        let tmp = array[f];
        array[f] = array[s];
        array[s] = tmp;
    }

    var debugDescription: String { return array.debugDescription }
}

func generate(n: Int, array: MyArray<Int>) {

    if n == 1 {
        print(array)
    }
    else {

        for i in 0 ..< n {
            generate(n - 1, array: array)

            if n % 2 == 0 {
                array.swap(n-1, s: i)
            }
            else {
                array.swap(n-1, s: 0)
            }
        }
    }
}

generate(3, array: MyArray<Int>(array: [1,2,3]))







