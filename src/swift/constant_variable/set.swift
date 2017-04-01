var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items")
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print("union")
let set1 = oddDigits.union(evenDigits).sorted()
for v in set1 {
    print("\(v) ", terminator: "")
}
print()

print("intersection")
let set2 = evenDigits.intersection(singleDigitPrimeNumbers).sorted()
for v in set2 {
    print("\(v) ", terminator: "")
}
print()

print("subtracting")
let set3 = oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
for v in set3 {
    print("\(v) ", terminator: "")
}
print()

print("symmetricDifference")
let set4 = oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
for v in set4 {
    print("\(v) ", terminator: "")
}
print()

print(oddDigits == evenDigits)
print(Set<Int>(set2).isSubset(of: evenDigits))
// isSubset(of:)
// isSuperset(of:)
// isStrictSubset(of:)
// isStrictSuperset(of:)
// isDisJoint(with:)
