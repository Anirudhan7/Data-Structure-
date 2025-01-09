void main() {
  LinkedList list = LinkedList();
  
  list.createNode(10);
  list.createNode(20);
  list.createNode(30);
  list.createNode(40);
  list.createNode(50);
  LinkedList list2 =LinkedList();
  list2.createNode(55);
  list2.createNode(43);
  list2.createNode(65);
  list.merge2Link(list2);
  list.displayNode();
//   list.middleNode();
//   List<int> array =[10,20,30,40];
//   list.arraytoLinked(array);

 
}
class Node{
  int? data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node? head;
  Node? tail;
  
  void createNode(int data){
    Node newNode =Node(data);
    if(head==null){
      
      head=newNode;
    }else{
      tail?.next=newNode;
    }
  tail =newNode;
}
  void displayNode(){
    if(head==null){
      print("list is null");
    }else{
      Node? temp =head;
      while(temp!=null){
        print(temp.data);
        temp=temp.next;
      }
    }
  }
  void deleteIndex(int index){
    Node? temp =head;
    for(int i =0;i<index-1;i++){
      temp=temp?.next;
    }
 temp?.next=temp.next?.next;
  }
 void middleNode(){

   Node? slow=head;
   Node? fast=head;
   while(fast!=null && fast.next?.next!=null){
     fast =fast.next?.next;
     slow=slow?.next;
   }
   print(slow?.data);
 }
  
  void arraytoLinked(List<int> array){
    for(int i =0;i<array.length;i++){
      createNode(array[i]);
 
    }
 
  }
     void merge2Link(LinkedList list2){
      tail?.next=list2.head;
      tail =list2.tail;
    }
  
  
}