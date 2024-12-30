void main() {
  LinkedList list = LinkedList();
  list.createNode(12);
  list.createNode(13);
  list.createNode(14);
  list.createNode(15);
  list.createNode(16);
  list.createNode(17);

  // list.displayRev();
  // list.displayMiddle();
  // list.delete(3);
  // list.insertBack(1333);
  // list.addNode(150,3 );
  // list.deleteNode(1468532);
  // list.nodeIndex(16);
  // list.displayMiddle2();
  list.addNode(30, 1);
  list.displayList();
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
  var size = 0;

  void createNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
    size++;
  }

  void displayList() {
    if (head == null) {
      print("list is empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void displayRev() {
    print("reversed");
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  void displayMiddle() {
    Node? temp = head;
    var middle = (size / 2).floor();
    for (int i = 0; i < middle; i++) {
      temp = temp?.next;
    }
    print("This is the middle ${temp?.data}");
  }

  void displayMiddle2() {
    Node? slow = head;
    Node? fast = head;
    while (fast != null && fast.next?.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }
    print("This is the middle ${slow?.data}");
  }

  void addNode(int data, int index) {
    Node newNode = Node(data);
    Node? temp = head;
    for (int i = 0; i < index - 1; i++) {
      temp = temp?.next;
    }
    newNode.next = temp?.next;
    newNode.prev = temp;
    temp?.next = newNode;
 
  }

  void deleteNode(int data) {
    Node? temp = head;
    int count = 0;
    while (temp != null) {
      if (temp.data == data) {
        temp.next?.prev = temp.prev;
        temp.prev?.next = temp.next;
        count++;
      }

      temp = temp.next;
    }
    if (count == 0) {
      print("not found");
    }
  }

  void delete(int index) {
    Node? temp = head;
    for (int i = 0; i < index; i++) {
      temp = temp?.next;
    }
    temp?.next?.prev = temp.prev;
    temp?.prev?.next = temp.next;
  }

  void insertfront(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      newNode.prev = null;
    }
    head = newNode;
  }

  void insertBack(int data) {
    Node newNode = Node(data);
    if (tail != null) {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void nodeIndex(int data) {
    Node? temp = head;
    int i = 0;

    while (temp != null) {
      if (temp.data == data) {
        print(i);
      }
      temp = temp.next;

      i++;
    }
  }
}
