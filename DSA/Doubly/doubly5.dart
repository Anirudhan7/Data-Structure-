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
    Node? newNode = Node(data);
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

  void displayMiddle() {
    Node? slow = head;
    Node? fast = head;
    while (fast != null && fast.next?.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }
    print("this is middle ${slow?.data}");
  }

  void insertNode(int index, int data) {
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
        if(temp==data){
          head =temp.next;
        }
        if(tail==null){
          tail=tail?.prev;
        }
        temp.next?.prev = temp.prev;
        temp.prev?.next = temp.next;
      }
      temp = temp.next;
    }
  }



  void insertFront(int data) {
    Node newNode = Node(data);
// Node? temp =head;
    if (head == null) {
      head = newNode;
    } else {
      head?.prev = newNode;
      newNode.next = head;
    }
    head = newNode;
  }

  void insertBack(int data) {
    Node? newNode = Node(data);
    if (tail == null) {
      tail = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void linearSearch(int data) {
    Node? temp = head;
    int i = 0;
    while (temp != null) {
      if (temp.data == data) {
        print(i);
      }
      i++;
      temp = temp.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.createNode(11);
  list.createNode(13);
  list.createNode(14);
  list.createNode(15);
  list.createNode(16);
  list.linearSearch(11);
  // list.insertFront(10);
  //   list.insertBack(17);

  // list.insertNode(1, 12);
  // list.displayMiddle();
  list.displayNode();
}
