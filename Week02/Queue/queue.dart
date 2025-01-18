void main() {

  Queue queue =Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.dequeu();
  queue.display();
  }

class Queue {
  List<int> _queue = [];
  void enqueue(int data) {
    _queue.add(data);
    print(" $data is added in to the queue");
  }

  int? dequeu() {
    if (_queue.isEmpty) {
      print("Queue underflow");
      return null;
    } else {
      int removed = _queue.removeAt(0);
      print(" $removed is removed from the queue");
      return removed;
    }
  }
  void display(){
   if(_queue.isEmpty){
     print("Queue is empty");
  }else{
    print(_queue);
  }
}
}