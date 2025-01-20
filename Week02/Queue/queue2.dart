import 'dart:async';

class Quueu{
  List<int> queue =[];
  void enqueue(int data){
    queue.add(data);
  
  }
  void dequeu(){
    queue.removeAt(0);
  }
  void display(){
    print(queue);
  }
  
}