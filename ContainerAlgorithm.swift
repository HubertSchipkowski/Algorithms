/* 
Problem:
Deliver the sum of all multiples of some factor f1 and some factor f2 of natural numbers in a given scope (size).

Solution:
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

