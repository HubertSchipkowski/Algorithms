let a = [5, 1, 6, 3, 2]
let b = [17, 5, 8, 9, 5, 3, 4, 0, 3, 90, 2]
let c = [3, 2, 1, 7, 6, 10, 5, 4, 3]
let d = [1, 13, 12, 14, 15, 11, 16, 17, 8]


/*
 This was an algorithm challenge in my current Algorithms and Datastructures Course.
 The goal was to return the second smallest element of any given integer array, with the specialty that if the smallest value
 appears more than once, the smallest element also counts as the second smallest element.
 Here is my solution, including the precise time complexities (no Landau notation) of this algorithm.
 */

func deliverSecondSmallest(inputField: [Int]) -> Int {
    
    var smallest = inputField[0]
    var secondSmallest = inputField[1]

    if secondSmallest < smallest { // Best Case and Worst Case time complexity: B(n) = W(n) = 1
        let bucket = smallest
        smallest = secondSmallest
        secondSmallest = bucket
    }

    
    for element in inputField[2...] {
        
        if element < secondSmallest { // Best Case time complexity: -> B(n) = n-1 + 1 = n
            
            if element < smallest { // Worst Case time complexity zu vgl. Element -> W(n) = 2(n-1) + 1 = 2n - 2 + 1 = 2n - 1
                secondSmallest = smallest
                smallest = element
            } else {
                secondSmallest = element
            }
        }
    }
    let position = inputField.firstIndex(of: secondSmallest)!+1
    return position
}


print(deliverSecondSmallest(inputField: d))
