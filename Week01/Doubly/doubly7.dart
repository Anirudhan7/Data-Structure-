void main() {
SinglyLinked list =SinglyLinked();
//   list.crateNode(10);
//   list.crateNode(11);
//   list.crateNode(12);
//   list.crateNode(13);
//   list.crateNode(14);
  
  List<int> array=[10,11,12,13,14,15];
  list.arraytoLinked(array);
    list.displayNode();
//   list.crateNode(11);
//   list.crateNode(12);

//   list.dupliremove();
//   list.deleteIndex(1);
//   list.addNode(8,1);
//   list.deleteMid();
//   list.displayMid();
// //   list.displayMid();
//   list.insertFront(9);
//   list.insertBack(15);

  
}
class Node{
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class SinglyLinked{
  Node? head;
  Node? tail;
  
  void createNode(int data){
    Node newNode =Node(data);
    if(head==null){
      head=newNode;
    }else{
      tail?.next=newNode;
      newNode.prev=tail;
      
    }
    tail=newNode;
  }
  void displayNode(){
    Node? temp =head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
      
    }
  }
  void insertFront(int data){
    Node newNode=Node(data);
    if(head==null){
      head=newNode;
    }else{
      head?.prev=newNode;
      newNode.next=head;
    }
    head =newNode;
    
  }
  void insertBack(int data){
   Node newNode =Node(data);
    if(tail==null){
      tail=newNode;
    }else{
      tail?.next=newNode;
      newNode.prev =tail;
    }
    tail=newNode;
  }
  void displayMid(){
    Node? slow=head;
    Node? fast=head;
    while(fast!=null && fast.next?.next!=null){
      slow=slow?.next;
      fast=fast.next?.next;
    }
    print("this is middle node ${slow?.data}");
  }
  
  void deleteMid(){
    Node? slow=head;
    Node? fast=head;
    while(fast!=null && fast.next?.next!=null){
      slow=slow?.next;
      fast=fast.next?.next;
    }
    slow?.prev?.next=slow.next;
    slow?.next?.prev=slow.prev;
   
  }
  void addNode(int data,int index){
    Node newNode= Node(data);
    Node? temp=head;
      if(index==0){
    head?.prev=newNode;
    newNode.next=head;
    head=newNode;
    return;
  }
for(int i =0;i<index-1;i++){
temp=temp?.next;
}
newNode.next=temp?.next;
newNode.prev=temp;
temp?.next?.prev=newNode;
temp?.next=newNode;
  }
  
  void deleteIndex(int index){
    Node? temp =head;
    for(int i =0;i<index;i++){
      temp=temp?.next;
    }
    
  temp?.next?.prev=temp.prev;
    temp?.prev?.next=temp.next;
    
  }
  void dupliremove(){
    Node? temp =head;
    while(temp!=null){
      if(temp.data==temp.next?.data){
        temp.next=temp.next?.next;
      }
      temp=temp.next;
    }
  }
  
  void arraytoLinked(List<int> array){
    for(int i =0;i<array.length;i++){
      createNode(array[i]);
    }
  }
  
  } 
  