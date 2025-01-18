void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.pop();
  stack.display();
}

class Stack {
  List<int> _stack = [];
  void push(int data) {
    _stack.add(data);
    print("$data is pushed in to stack");
  }

  int? pop() {
    if (_stack.isEmpty) {
      print("stack underflow");
      return null;
    } else {
      int removed = _stack.removeLast();
      print("$removed is removed form the stack");
      return removed;
    }
  }

  void display() {
    if (_stack.isEmpty) {
      print("stack underflow");
    } else {
      print(_stack);
    }
  }
}
