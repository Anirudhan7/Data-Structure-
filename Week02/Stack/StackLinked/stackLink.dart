class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;

  void push(int data) {
    Node? newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  int? pop() {
    int? popedData = top?.data;
    top = top?.next;
    return popedData;
  }

  void delete(int data){
   if(top?.data==data){
    top=top?.next;
    return;
   }
   Node? temp =top;
   while(temp?.next?.data==data){
    temp?.next=temp.next?.next;
   }
   temp=temp?.next;
  }

  void displayStack() {
    Node? temp = top;
    if (top == null) {
      print("Stack underflow");
    } else {
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
   int ?sum(){
    Node? temp =top;
    int sum =0;
    while(temp!=null){
    sum+=temp.data??0;
     temp =temp.next;
    }
    return  sum;

  }

}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.displayStack();

  int? st = stack.pop();
  print("Removed data $st");
  stack.displayStack();
}
