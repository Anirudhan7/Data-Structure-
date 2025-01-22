class Node{
  int? data;
  Node? next;

  Node(this.data);
  }

class Stack{
  Node? top;
  void push(int data){
    Node newNode=Node(data);
    newNode.next=top;
    top =newNode;
  }
int? pop(){
  
}
}