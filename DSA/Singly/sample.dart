class Node {
  int? data;
  Node? next;
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
}

void main() {
  LinkedList list = LinkedList();

  list.displayList();
  list.createNode(12);
  list.createNode(13);
  list.createNode(84);
  list.createNode(56);

  list.displayList();
}
