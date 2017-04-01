var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
var threeDoubles = Array(repeating: 2.0, count: 3)
for item in threeDoubles {
    print("\(item) ", terminator: "")
}
print()

var shoppingList = ["Eggs", "Milk"]
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList[0] = "Six eggs"
shoppingList[4...6] = ["Bananas", "Apples"]

for (index, item) in shoppingList.enumerated() {
    print("Item \(index + 1): \(item)")
}
print()
