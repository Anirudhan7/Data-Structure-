void main() {
  Stack stack = Stack();
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.popdata(4);
  stack.display();
}

class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class Stack {
  Node? top;
  void push(int data) {
    Node newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  int? pop() {
    int? poped = top?.data;
    top = top?.next;
    return poped;
  }

  void popdata(int data) {
    Node? temp = top;
    while (temp != null) {
      if (temp.next?.data == data) {
        temp.next = temp.next?.next;
      }
      temp = temp.next;
    }
  }

  void display() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
