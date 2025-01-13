void main() {
  // First doubly linked list
  DoublyLinkedList list1 = DoublyLinkedList();
  list1.createNode(10);
  list1.createNode(20);
  list1.createNode(30);

  // Second doubly linked list
  DoublyLinkedList list2 = DoublyLinkedList();
  list2.createNode(40);
  list2.createNode(50);
  list2.createNode(60);

  // Merging list2 into list1
  // list1.merge(list2);

  // Display merged list
  print("Merged List:");
  list1.display();
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
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  // void merge(DoublyLinkedList otherList) {
  //   tail?.next = otherList.head; // Connect the tail of the first list to the head of the second list
  //   otherList.head?.prev = tail; // Set the previous pointer of the second list's head
  //   tail = otherList.tail;       // Update the tail to the second list's tail
  // }
}
