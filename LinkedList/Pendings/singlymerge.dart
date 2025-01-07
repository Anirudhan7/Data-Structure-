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

  void displaylinkedlist() {
    if (head == null) {
      print("no data");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void merge(SinglyLinkedList list2) {
    tail?.next = list2.head;
    tail=list2.tail;

  }
}

void main() {
  SinglyLinkedList list = SinglyLinkedList();
  list.createNode(15);
  list.createNode(32);

  SinglyLinkedList list2 = SinglyLinkedList();
  list2.createNode(12);
  list2.createNode(33);

  list.merge(list2);
  list.displaylinkedlist();
}
