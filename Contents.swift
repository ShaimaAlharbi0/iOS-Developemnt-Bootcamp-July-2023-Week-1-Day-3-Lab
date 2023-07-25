import UIKit
///Task 1: Function Basics
func greet(Names: String) -> String {
    let greetingmessage = "Holla welcome back, " + Names + "!"
    return greetingmessage
}
print(greet(Names: "Shaima"))
print(greet(Names: "Mansour"))


///Task 2: Function Overloading

func calculateArea(value1: Int, value2: Int) -> Int
{
      let sum = value1 + value2
          return(sum)
}
func calculateArea(value1: Int, value2:Int) -> Double
{
      let sum = value1 + value1
          return (Double)(sum)
}


var RectLength : Int = 20
var RectWidth : Int = 10
var RectArea = RectLength * RectWidth
print("Length - ", RectLength)
print("Width - ", RectWidth)



///Task 3: Nested Functions
    enum MathOperation {
        case addition, subtraction, multiplication, division}
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func multiplication(_ a: Int, _ b: Int) -> Int {
    return a * b
}
func division(_ a: Int, _ b: Int) -> Int {
    return a / b
}

var mathOperation: (Int, Int) -> Int

mathOperation = add
let result1 = mathOperation(13,45)
print("Result 1: \(result1)")

mathOperation = subtract
let result2 = mathOperation(80,44)
print("Result 2: \(result2)")

mathOperation = multiplication
let result3 = mathOperation(50,9)
print("Result 3: \(result3)")

mathOperation = division
let result4 = mathOperation(61,2)
print("Result 4: \(result4)")


///Task 4: Higher-Order Functions

func myArray(array : [Int]){
    for number in array {
        number
    }
}
let theArray : [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
myArray(array: theArray)
let oddnumbers = theArray.filter { i in
i % 2 == 1
}

print(oddnumbers)
let mapNumbres = theArray.map { i in
    Int(i) * 5
}
print(mapNumbres)
print(theArray)

let reduceNumbres = theArray.reduce(1, { firstNumber, seconedNumber in
    return (firstNumber + seconedNumber)
    
})

print(reduceNumbres)



///Task 5: Closures

func performOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}
let multiplyClosure = { (x: Int, y: Int) -> Int in
    return x * y
}

let resultmultiply = performOperation(20, 40, operation: multiplyClosure)
print("Result of multiplication: \(resultmultiply)")

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  let int = numbers.map { $0 * 5 }
print(int)


