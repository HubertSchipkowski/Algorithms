
/*
 Task:
 Find the maximum of a sequence of n numbers.
 Design a divide and conquer algorithm to solve the problem.
 */

let field1 = [-3, 112, 5, 99, 7, 116, 5]

func maximum(_ field: [Int]) -> Int {
    var max = 0
    
    if field.count == 1 {
        max = field[0]
    } else if field.count >= 2 {
        
        // Divide
        let topLeftIndex: Int = Int(Float(field.count / 2).rounded(.down))-1
        let rightBottomIndex: Int = topLeftIndex + 1
        let leftField = Array(field[0...topLeftIndex])
        let rightField = Array(field[rightBottomIndex..<field.count])
        
        // Conquer via recursion
        let leftMax = maximum(leftField)
        let rightMax = maximum(rightField)
        
        // Combine
        max = leftMax >= rightMax ? leftMax : rightMax
    }
    return max
}
print(maximum(field1)) // prints "116"
