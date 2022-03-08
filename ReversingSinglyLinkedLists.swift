/*
Algorithmization Challenge: Linked Lists

Design and implement in Swift an algorithm that destructively inverts a given singly-linked list, i.e. flips all vertexes between list elements without copying the elements.
Input is a pointer to the first element of the list, output is a pointer to the first element of the inverted list (=last element of the original list).
Example:
Original list: a→b→c, input: pointer to a.
Inverted list: a←b←c, output: Pointer to c
*/



class Node<T> {
    var data: T
    var next: Node?
    
    init(data: T) {
        self.data = data
    }
    
    init(data: T, next: Node) {
        self.data = data
        self.next = next
    }
}

var previousNode: Node<String>? = nil
var currentNode: Node<String>? = nil
var nextNode: Node<String>? = nil

var stop = false

var node3 = Node(data: "c")
var node2 = Node(data: "b", next: node3)
var node1 = Node(data: "a", next: node2)

var listOneHead = node1


func traverser(node: Node<String>) {
    var currentNode = node
    
    while currentNode.next != nil {
        print(currentNode.data)
        currentNode = currentNode.next!
    }
    print(currentNode.data)
}




func reverseList() {

    start()
    
    while !stop {
        middle()
    }
    
    end()
    
    listOneHead = currentNode!
    currentNode = nil
    
}


func start() {
    currentNode = listOneHead
    nextNode = currentNode?.next
    currentNode?.next = previousNode
    previousNode = currentNode
}

func middle() {
    currentNode = nextNode
    
    if currentNode?.next == nil {
        stop = true 
    }
    
    nextNode = currentNode?.next
    currentNode?.next = previousNode
    
    if !stop {
        previousNode = currentNode
    }
    
}

func end() {
    currentNode?.next = previousNode
    previousNode = nil
}


// Test

traverser(node: listOneHead) // prints "a b c"
reverseList()
traverser(node: listOneHead) // prints "c b a"

