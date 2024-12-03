// add a node or value t the front of the linked list

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class singlylinkedlist {
  Node? head;
  Node? tail;

  void createnode(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void insertfront(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      newnode.next = head;
      head = newnode;
    }
  }

  displaylinkedlist() {
    if (head == null) {
      print('no list found');
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
  singlylinkedlist list = singlylinkedlist();

  list.createnode(10);
  list.createnode(15);
  list.createnode(20);
  list.createnode(25);
  list.createnode(30);
  list.createnode(40);
  list.displaylinkedlist();
  
  print('--------------');

  list.insertfront(100);
  list.displaylinkedlist();
}
