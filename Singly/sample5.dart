class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class SinglyLinkedList {
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

  void displaylinkedlist() {
    if (head == null) {
      print("no data");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }







  
  // void reverse(){
  //   Node? curr =head;
  //   Node? temp;
  //   while(curr!=null){
  //     temp = 
  //   }

    
  // }
//   void reverse() {
//   var current = head;
//   Node? temp;

//   while (current != null) {
//     temp = current.prev;
//     current.prev = current.next;
//     current.next = temp;
//     current = current.prev;
//   }

//   if (temp != null) {
//     tail = head;
//     head = temp.prev;
//   }
// }


}

void main() {
  SinglyLinkedList list = SinglyLinkedList();
  list.createNode(15);
  list.createNode(32);
  list.displaylinkedlist();
}
