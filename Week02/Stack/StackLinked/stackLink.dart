void main() {

  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.pop();
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
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }
  void pop(){
    if(top==null){
      print("Stack Underflow");
    }else{
      top=top?.next;
    }
  }

  void display() {
    Node? curr = top;
    while (curr != null) {
      print("${curr.data}");
      curr = curr.next;
    }
    
  }
}


