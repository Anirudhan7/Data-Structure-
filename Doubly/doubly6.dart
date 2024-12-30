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

  void displayNode() {
    if (head == null) {
      print("List is empty");
    }
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void insertFront(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      head?.prev = newNode;
    }
    head = newNode;
  }

  void insertBack(int data) {
    Node newNode = Node(data);
    if (tail == null) {
      tail = newNode;
    } else {
      newNode.prev = tail;
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void middleNode() {
    Node? slow = head;
    Node? fast = head;
   
    while (fast != null && fast.next?.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }
    print("this is middle ${slow?.data}");
  }

  void deleteNode(int data) {
    Node? temp = head;

    while (temp != null) {
      if (temp.data == data) {
        if (temp == head) {
          head = temp.next;
        }
        if (temp == tail) {
          tail = tail?.prev;
        }
        temp.next?.prev = temp.prev;
        temp.prev?.next = temp.next;
      }
      temp = temp.next;
    }
  }

  void deleteNode2(int data) {
    Node? temp = head;

    while (temp != null) {
      if (temp.data == data) {
        if (temp == head) {
          head = temp.next;
        }

        if (temp == tail) {
          tail = temp.prev;
        }

        temp.next?.prev = temp.prev;
        temp.prev?.next = temp.next;

        return;
      }
      temp = temp.next;
    }
    print("data not found");
  }

  void addNodeindex(int data, int index) {
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
  void reverse() {
  Node? current = head;
  Node? temp;

  while (current != null) {
    temp = current.prev;
    current.prev = current.next;
    current.next = temp;
    current = current.prev;
  }

  if (temp != null) {
    tail = head;
    head = temp.prev;
  }
}


}

void main() {
  LinkedList list = LinkedList();
  list.createNode(1);
  list.createNode(2);
  list.createNode(3);
  list.createNode(4);
  list.createNode(5);
  list.createNode(6);
  list.reverse();

  // list.insertFront(10);
  // list.insertBack(11);
  // list.addNodeindex(0, 10);
  // list.deleteNode2(2);
  // list.middleNode();
  list.displayNode();
}
