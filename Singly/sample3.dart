void main() {
  SinglyLinkedList list = SinglyLinkedList();

  list.createNode(1);
  list.createNode(2);
  list.createNode(3);
  list.createNode(4);
  list.createNode(5);
 list.deletePos(1);
  list.inserNode(4, 10);
  list.display();

  print("------------------------");
  // list.prepend(77);
  // list.display();
}

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
      print("empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void sort() {
    Node? temp = head;
    while (temp != null) {
      if (temp.data! > temp.next!.data!) {
        temp.data != temp.next!.data;
      }
      temp = temp.next;
    }
  }

  void prepend(int data) {
    Node newNode = Node(data);
    if (head != null) {
      head = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  void inserNode(int index, int data) {
    Node? temp = head;
    Node newNode = Node(data);
    for (int i = 0; i < index - 1; i++) {
      temp = temp?.next;
    }
    if (index == 0) {
      newNode.next = head;
      head = newNode;
    }

    newNode.next = temp?.next;
    temp?.next = newNode;
  }
  void deletePos(int index){
    Node? temp= head;
    for(int i =0;i<index-1;i++){
   temp=temp?.next;
    }
    temp?.next= temp.next?.next;

  }
}
