class Node {
  int? data;
  Node? next;
  Node? previous;
  Node(this.data);
}

class DoublyLinkedList {
  var size = 0;
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
    size++;
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

  void insertfront(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      newNode.previous = null;
    }
    head = newNode;
  }

  void insertBack(int data) {
    Node newNode = Node(data);
    if (tail != null) {
      tail?.next = newNode;
      newNode.previous = tail;
      tail = newNode;
    }
  }

  void deletemiddle() {
    var middle = (size / 2).floor();
    // print(middle);
    Node? temp = head;
    for (int i = 0; i < middle; i++) {
      temp = temp?.next;
    }
    print(temp?.data);

    temp?.next?.previous = temp.previous;
    temp?.previous?.next = temp.next;
  }

  void deleteNode(int index) {
    Node? temp = head;
    for (int i = 0; i < index; i++) {
      // temp = temp?.next;
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.deletemiddle();
  list.insertBack(100);
  list.display();
}
