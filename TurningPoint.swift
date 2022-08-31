/*
FIND THE TURNING POINT
 
There are arrays which first part is sorted in a decreasing order (i > j) 
and which second part is sorted in an increasing order (i < j).
Find the array position of the first element of the second part of any given array of such kind.
 */

let a1 = [17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, -4, -3]
let a2 = [6, 5, -4, -3, -2, -1, 0, 1, 2, 3, 4]
let array = a1

var turningPointPosition = -1

func setTurningPointPosition(h: Int, j: Int) {
    let i = (h + j) / 2
    
    if array[i-1] > array[i] + 1 {
        turningPointPosition = i
    } else if array[i-1] == array[i] + 1 {
        setTurningPointPosition(h: i+1, j: j)
    } else {
        setTurningPointPosition(h: h, j: i-1)
    }
}

setTurningPointPosition(h: 0, j: array.count-1)
print("Position of Turning Point: \(turningPointPosition)")
