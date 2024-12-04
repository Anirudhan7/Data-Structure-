class Node {
  int? data;
  Node? next;
  Node(this.data);
}
 
class SinglyLinkedList {
  Node? head;
  Node? tail;
  void addNOde(int data) {
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
      print("EMPTY");
    } else {
      Node? temp = head;
      while(temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
}

void main() {
  SinglyLinkedList list = SinglyLinkedList();
  list.display();
  list.addNOde(10);
  list.addNOde(20);
  list.addNOde(30);
  list.addNOde(50);
  list.display();
}
