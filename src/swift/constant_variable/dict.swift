var namesOfIntegers = [Int: String]()
var airports: [String: String] = ["XYZ": "Toronto Pearson", "DUB": "Dublin"]
print("The airports contains \(airports.count) items")
airports["LHR"] = "London"
if let oldValue = airports.updateValue("Dublin airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue)")
}

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
