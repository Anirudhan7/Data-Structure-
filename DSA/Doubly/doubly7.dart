void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.createNode(10);
  list.createNode(11);
  list.createNode(12);
  list.createNode(13);
  list.createNode(14);
  list.createNode(15);
  list.displayNode();
}

class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  void createNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void displayNode() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
