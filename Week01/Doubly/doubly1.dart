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

  void displayNode() {
    if (head == null) {
      print("NO data ");
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

  void insertFront(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      head?.next = newNode;
    }
  }

  void deleteNode(int data) {
    Node? temp = head;
    while (temp != null) {
      if (temp == head) {
        head = temp.next;
      }
      if (temp == tail) {
        tail = temp.previous;
      }
      if (temp.data == data) {
        temp.next?.previous = temp.previous;
        temp.previous?.next = temp.next;
      }
      temp = temp.next;
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.addNode(12);
  list.addNode(13);
  list.addNode(141);
  list.displayNode();
  list.displayReverse();
}
