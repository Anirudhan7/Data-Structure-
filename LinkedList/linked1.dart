class Node {
  String? data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  void createNode(String data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void displayList() {
    if (head == null) {
      print("List is empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void reverseList() {
    Node? curr = head;
    Node? temp = null;

    while (curr != null) {
      temp = curr.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();

  list.createNode("h");
  list.createNode("e");
  list.createNode("l");
  list.createNode("l");
  list.createNode("o");

  list.displayList();
}
