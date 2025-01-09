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
      print("EMPTY");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void prepend(int data) {
    Node newNode = Node(data);
    if (head != null) {
      newNode.next = head;
    }
  }

}

void main() {
  SinglyLinkedList list = SinglyLinkedList();
  list.display();
  list.createNode(10);
  list.createNode(20);
  list.createNode(30);
  list.createNode(50);
  list.prepend(51);
  list.display();
}
