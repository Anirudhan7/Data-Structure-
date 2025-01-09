void main() {
  LinkedList list = LinkedList();
  list.createNode(10);
  list.createNode(31);
  list.createNode(341);
  list.createNode(400);
  // list.insertBack(100);
  // list.insertfront(411);
  // list.deleteNode(2);
  // list.linearSearch(341);
  list.addNode(2, 40);
  list.display();
}

class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class LinkedList {
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

  void display() {
    if (head == null) {
      print("list is empty");
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void insertBack(int data) {
    Node newNode = Node(data);

    if (tail != null) {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void insertfront(int data) {
    Node newNode = Node(data);
    if (head != null) {
      head?.prev = newNode;
      newNode.next = head;
    }
    head = newNode;
  }

  void deleteIndex(int index) {
    Node? temp = head;
    for (int i = 0; i < index; i++) {
      temp = temp?.next;
    }
    temp?.next?.prev = temp.prev;
    temp?.prev?.next = temp.next;
  }

  void addNode(int index, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    for (int i = 0; i < index - 1; i++) {
      temp = temp?.next;
    }

    newNode.next = temp?.next;
    temp?.next?.prev = newNode;
    newNode.prev = temp;
    temp?.next = newNode;
  }

  void deleteNode(int data) {
    Node? temp = head;
    while (temp != null) {
      if (temp.data == data) {
        temp.next?.prev = temp.prev;
        temp.prev?.next = temp.next;
      }
      temp = temp.next;
    }
  }

  void linearSearch(int data) {
    Node? temp = head;
    int i = 0;
    while (temp != null) {
      if (temp.data == data) {
        print(i);
      }
      temp = temp.next;
      i++;
    }
    print("position not foud");
  }
}
