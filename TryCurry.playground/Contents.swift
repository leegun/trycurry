//: Playground - noun: a place where people can play

import Foundation

// non curry
func zeikomi(zeiritu: Float, kakaku: Float) -> Float {
    return zeiritu * kakaku
}

print(zeikomi(100, kakaku: 1.08))
print(zeikomi(100, kakaku: 1.10))

// curry
func zeiritu(zeiritu: Float) -> (Float) -> (Float) {
    func zeikomi (kakaku: Float) -> Float {
        return zeiritu * kakaku
    }
    return zeikomi
}

var zeiritu8 = zeiritu(1.08)
print(zeiritu8(100))

var zeiritu10 = zeiritu(1.10)
print(zeiritu10(100))
