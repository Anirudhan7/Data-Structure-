class Node{
  int? data;
  Node?next;
  Node(this.data);
}

class SinglyLinkedlIST{
  Node? head;
  Node? tail;

  void createNode(int data){
    Node newNode =Node(data);
    if(head==null){
      head=newNode;
    }else{
      tail?.next=newNode;
    }
    tail=newNode;

  }
  void display(){
    Node? temp = head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }

  }
  void insertFront(int data){
    Node newNode=Node(data);
  newNode.next=head;
  head=newNode;
  }
  void delete(int data){
    
  }
}