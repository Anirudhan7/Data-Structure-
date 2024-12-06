void main() {
  SinglyLinkedList list = SinglyLinkedList();

  list.createNode(15);
  list.createNode(17);
  list.createNode(18);
  list.createNode(23);
   list.display();

  print("------------------------");
  list.prepend(77);
  list.display();
 
}

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class SinglyLinkedList {
  Node? head;
  Node? tail;
  void createNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void display() {
    if (head == null) {
      print("empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
    void prepend(int data){
    Node newNode=Node(data);
    if(head!=null){
      head=newNode;
    }else{
      newNode.next=head;
      head=newNode;
    }

  }

}
