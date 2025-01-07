void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.createNode(10);
  list.createNode(20);
  list.createNode(30);
  list.createNode(40);
  list.createNode(50);
  list.deleteNode(30);
  list.display();
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

  void display() {
    if (head == null) {
      print("List is Empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void deleteNode(int data) {
    Node? temp = head;
    while (temp != null) {
      if (temp.data == head?.data) {
        head = head?.next;
      }
      if (temp.data == tail?.data) {
        tail = tail?.prev;
      } else {
        temp.next?.prev = temp.prev;
        temp.prev?.next = temp.next;
      }
      temp = temp.next;
    }
  }
}
