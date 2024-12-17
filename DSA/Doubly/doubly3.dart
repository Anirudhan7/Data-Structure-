void main() {
  LinkedList list = LinkedList();
  list.addNode(12);
  list.addNode(13);
  list.addNode(14);
  list.addNode(15);
  list.addNode(16);
  list.displayList();
  list.displayRev();
}

class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;
  var size;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void displayList() {
    if (head == null) {
      print("list is empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void displayRev() {
    print("reversed");
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }
  void displayMiddle(){
  Node? temp =head;

}
}

