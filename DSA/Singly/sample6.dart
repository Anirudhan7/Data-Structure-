void main() {

  LinkedList list =LinkedList();
  list.displaylinkedlist();

  list.createNode(12);
  list.createNode(45);
  list.createNode(95);
  list.displaylinkedlist();
}

class Node {
  int? value;
  Node? next;

  Node(this.value);
}

class LinkedList {
  Node? head;
  Node? tail;

  void createNode(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void displaylinkedlist() {
    if (head == null) {
      print("List is empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.value);
        temp = temp.next;
      }
    }
  }

}
