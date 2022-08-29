/* 
Problem:
Deliver the sum of all multiples of some factor f1 or some factor f2 of natural numbers in a given scope (size).

Solution for input factors that are not multiples of each other:
"Container Algorithm" (Big O of (1))
*/

func solve(size: Int, f1: Int, f2: Int) -> Int {
    let c = f1 * f2
    let i1: Double = (Double(size)/Double(f1)).rounded(.down)
    let i2: Double = (Double(size)/Double(f2)).rounded(.down)
    let ic: Double = (Double(size)/Double(c)).rounded(.down)
    
    let r1 = (i1 + (i1 * ((i1-1) / 2))) * Double(f1)
    let r2 = (i2 + (i2 * ((i2-1) / 2))) * Double(f2)
    let rc = (ic + (ic * ((ic-1) / 2))) * Double(c)
    
    return Int(r1 + r2 - rc)
}

// Here is an even simpler geometric approach

func containerAlgorithm(size: Int, f1: Int, f2: Int) -> Int {
    let c = Double(f1 * f2)
    let i1: Double = (Double(size)/Double(f1)).rounded(.down)
    let i2: Double = (Double(size)/Double(f2)).rounded(.down)
    let ic: Double = (Double(size)/Double(c)).rounded(.down)
    
    let f1R = containers(i: i1) * Double(f1)
    let f2R = containers(i: i2) * Double(f2)
    let cR = containers(i: ic) * c 
    
    return Int(f1R + f2R - cR)
}

func containers(i: Double) -> Double {
    let a = i + 1
    let b = i
    return i > 0 ? (a * b) / 2 : 0
}




