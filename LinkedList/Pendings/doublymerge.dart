class Node {
  int? data;
  Node? prev;
  Node? next;
  Node(this.data);
}

class DoublyLinked {
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

  void displayaList() {
    if (head == null) {
      print("No list fount");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void mergeList(DoublyLinked list2){
    tail?.next=list2.head;
    list2.head?.prev=tail;
    tail=list2.tail;

  }
}

void main() {
  DoublyLinked list = DoublyLinked();
  list.createNode(10);
  list.createNode(20);
  list.createNode(30);
  list.createNode(40);
  list.displayaList();
}
