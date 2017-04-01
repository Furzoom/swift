let myConstant = 10
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4

// explicit cast
let label = "The width is "
let width = 94
var widthLabel = label + String(width)
print(widthLabel, explicitFloat, separator:"#")
print("\(widthLabel)#\(explicitFloat)")

print("Integer Bounds:")
let min = UInt8.min
let max = UInt8.max
print(min, max)
print(UInt16.min, UInt16.max)
print(UInt32.min, UInt32.max)
print(UInt64.min, UInt64.max)

print(Int8.min, Int8.max)
print(Int16.min, Int16.max)
print(Int32.min, Int32.max)
print(Int64.min, Int64.max)

print("Int Bounds:")
print(Int.min, Int.max)
print(17)
print(0b10001)
print(0o21)
print(0x11)
print(0xF.4p0)
print(000123.456)
print(1_000_000.000_1)

typealias AudioSample = UInt16
let orange = true
let apple = false
print(orange, apple)

let http404Error = (404, "Not Found")
print(http404Error)
let (statusCode, statusMessage) = http404Error
print(statusCode, statusMessage)

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' could not be converted to an integer.")
}
print(convertedNumber!)
var serverResponseCode: Int?// = 404
if serverResponseCode != nil {
    print(serverResponseCode!)
}

let age = -3
assert(age >= 0, "A person's age can not be less than zero.")
