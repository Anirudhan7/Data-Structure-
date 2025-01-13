class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class SinglyList {
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

  void createCyclic() {
    if (head != null && tail != null) {
      tail?.next = head;
    }
  }

  void checkCyclic() {
    Node? fast = head;
    Node? slow = head;
    while (fast != null && fast.next?.next != null) {
      fast = fast.next?.next;
      slow = slow?.next;
      if (fast == slow) {
        print("it is cyclic");
      }
    }
    print("Not cyclic");
  }

  void dispLayNode() {
    Node? temp = head;
    if (head == null) {
      print("List is empty");
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void dupliRemove() {
    Node? temp = head;

    while (temp != null) {
      if (temp.data == temp.next?.data) {
        temp.next = temp.next?.next;
      }
      temp = temp.next;
    }
    print("duplicates removed");
  }
}

void main() {
  SinglyList list = SinglyList();
  list.createNode(10);
  list.createNode(20);
  list.createNode(30);
  list.createNode(30);
  list.createNode(40);
  list.createNode(40);
  list.createNode(50);
  // list.dispLayNode();
  // list.dupliRemove();
  // list.createCyclic();
  // list.checkCyclic();
  list.dispLayNode();
}
