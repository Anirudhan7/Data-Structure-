void main() {
  Stack stack = Stack();

  stack.push(1);
  stack.push(2);
  stack.push(3);

  stack.display(); // Output: Stack elements [1, 2, 3]

  print("Popped element: ${stack.pop()}"); // Output: Popped element: 3
  print("Popped element: ${stack.pop()}"); // Output: Popped element: 2

  stack.display(); // Output: Stack elements [1]

  print("Popped element: ${stack.pop()}"); // Output: Popped element: 1

  stack.display(); // Output: Stack UnderFlow

  print("Popped element: ${stack.pop()}"); // Output: Stack UnderFlow
}

class Stack {
  List<int> _stack = [];

  void push(int data) {
    _stack.add(data);
    print("Data $data is pushed to the stack");
  }

  int? pop() {
    if (_stack.isEmpty) {
      print("Stack UnderFlow");
      return null; // Return null if the stack is empty
    } else {
      return _stack.removeLast(); // Remove and return the last element
    }
  }

  void display() {
    if (_stack.isEmpty) {
      print("Stack UnderFlow");
    } else {
      print("Stack elements: $_stack");
    }
  }
}
