//1_iteration w/t for...in

func impFact (_ fact: Int) -> Int {
    var factorial: Int = 1
    for n in 1...fact {
        factorial = factorial * n
    }
    return factorial
}

print(impFact(5))

//1_recursion method

func bbg(_ n: Int) -> Int {

    if n == 0 {

        return 1
    }

    return n * bbg(n - 1)
}

print(bbg(5))


//2_Fibonachi Sequence
func fibboFunc(_ n: Int) -> Array<Int> {
    var arr: [Int] = [0 , 1]
    if n <= 2 {
        return .init(arr[0..<n])
    }

    for i in 2..<n {
        arr.append(arr[i - 2] + arr[i - 1])
    }
    return arr
}
print("result:", fibboFunc(7))


//3_Pi N-digit


import Foundation

func findNPi (_ val: Int) -> Any {
    let numberOfPlaces: Double = Double(val)
    let multiplier = pow(10.0, numberOfPlaces)
    return val == 0 ? 0 : round(Double.pi * multiplier) / multiplier
}

var result = findNPi(5)
print("result of PI:", result)








