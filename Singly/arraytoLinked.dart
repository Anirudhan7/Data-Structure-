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

  void displayNode() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void arraytoLinkedList(List<int> array) {
    for (int i = 0; i < array.length; i++) {
      createNode(array[i]);
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  List<int> array = [10, 11, 23, 2, 41, 51];
  list.arraytoLinkedList(array);
  list.displayNode();
}
