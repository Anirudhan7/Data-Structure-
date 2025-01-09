void main() {
  DoublyLinked list = DoublyLinked();
  list.createNode(10);
  list.createNode(20);
  list.createNode(23);
  list.createNode(25);
  list.insertBefore(15, 20);
  list.insertAfter(26, 25);
  list.displayNode();
}

class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoublyLinked {
  Node? head;
  Node? tail;

  void createNode(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void addNode(int data, int index) {
    Node newNode = Node(data);
    Node? temp = head;

    for (int i = 0; i < index - 1; i++) {
      temp = temp?.next;
    }
    newNode.next = temp?.next;
    newNode.prev = temp;
    temp?.next?.prev = newNode;
    temp?.next = newNode;
  }

  void insertBefore(int data, int before) {
    Node? temp = head;
    Node newNode = Node(data);
    while (temp != null) {
      if (temp.data == before) {
        newNode.prev = temp.prev;
        newNode.next = temp;
        temp.prev?.next = newNode;
        temp.prev = newNode;
        return;
      }
      temp = temp.next;
    }
  }

  void displayNode() {
    if (head == null) {
      print("Empty");
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void insertAfter(int data, int after) {
    Node? temp = head;
    Node newNode = Node(data);
    while (temp != null) {
      if (temp.data == after) {
        newNode.next = temp.next;
        newNode.prev = temp;
        temp.next?.prev = newNode;
        temp.next = newNode;

        return;
      }
      temp = temp.next;
    }
  }
}
