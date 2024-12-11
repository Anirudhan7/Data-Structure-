class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class SinglyLinkedList {
  Node? tail;
  Node? head;

  void addnode(int data) {
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
      print("no data found");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
      temp =temp.next;
      }
    }
  }
}

void main() {
  SinglyLinkedList list =SinglyLinkedList();
  list.addnode(12);
  list.addnode(54);
  list.addnode(77);
  list.display();
}
