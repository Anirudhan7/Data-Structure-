class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node newNode = Node(data);
    if (front == null) {
      front = newNode;
      rear = newNode;
    } else {
      rear?.next = newNode;
      rear = newNode;
    }
  }

  int? dequeue() {
    int? dequeuData = front?.data;
    front = front?.next;
    return dequeuData;
  }

  void deleteData(int data) {
    Node? temp = front;
    if(front?.data==data){
      front=front?.next;
      return;
    }
    while (temp != null) {
      if (temp.next?.data == data) {
        temp.next = temp.next?.next;
      }
      temp = temp.next;
    }
  }

  void display() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.dequeue();
  // queue.deleteData(2);
  // int? a =queue.dequeue();
  // print("dequed data is $a");
  queue.display();
}
