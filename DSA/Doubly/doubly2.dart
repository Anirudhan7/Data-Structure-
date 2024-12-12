class Node {
  int? data;
  Node? next;
  Node? previous;
  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.previous = tail;
    }
    tail = newNode;
  }

  void display() {
    if (head == null) {
      print(null);
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void displayReverse() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.previous;
    }
  }
  void insertfront(int data){
    Node newNode =Node(data);
    if(head==null){
      head=newNode;
    }else{
      newNode.next=head;
      newNode.previous=null;
    }
    head =newNode;
  }
  void insertBack(int data){
    Node newNode =Node(data);
    if(tail ==null){
      tail?.next=newNode;
      newNode.previous =tail;
      tail=newNode;
    }

    
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.display();
}
