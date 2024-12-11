void main() {
  LinkedList list = LinkedList();

  list.createNode(12);
  list.createNode(45);
  list.createNode(95);
  list.deleteFirst();
  // list.prepend(48);
  // list.append(500);
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

  void prepend(int data) {
    Node newNode = Node(data);
    if (head != null) {
      newNode.next = head;
      head = newNode;
    }
  }

  void append(int data) {
    Node newNode = Node(data);
    if (tail != null) {
      newNode.next = tail;
      tail = newNode;
    }
  }

  void deleteFirst() {
    if (head == null) {
      print("empty");
    } else {
      if (head == tail) {
        head = null;
        tail = null;
        print("first node deleted");
      } else {
        head = head?.next;
      }
    }
  }
  void deletelast(){
    if (tail==null){
     print("no tail found");
    }else{
      if(head==tail){
        head = null;
        tail = null;
        print("first node deleted");
      }else{
        
      }
    }
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
