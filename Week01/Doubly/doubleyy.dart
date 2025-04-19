void main(){
  DoublyLinkedList list=DoublyLinkedList();
  list.insertNode(1);
  list.insertNode(2);
  list.insertNode(3);
  list.insertNode(4);
  list.deleteNode(2);
  list.displayNode();
}

class Node{
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}
class DoublyLinkedList{
 Node? head;
 Node? tail;
  void insertNode(int data){
    Node? newNode=Node(data);
    if(head==null){
      head=newNode;
    }else{
      tail?.next=newNode;
      newNode.prev=tail;
    }
    tail=newNode;
  }
  
  void displayNode(){
    Node? temp= head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
  }
  void deleteNode(int data){
    Node? temp=head;
    while(temp!=null){
      if(temp.data==data){
        temp.prev?.next=temp.next;
        temp.next?.prev=temp.prev;
      }
      temp=temp.next;
    }
  }
  void deleteIndex(int index){
    Node? temp =head;
    for(int i=0;i<index-1;i++){
      temp=temp?.next;
    }

  }
  void insetNode(int data,int index){
    Node? newNode=Node(data);
    Node? temp=head;
    for(int i=0;i<index-1;i++){
      temp=temp?.next;
    }
  newNode.next=temp?.next;
  temp?.next?.prev=newNode;
  newNode.prev=newNode;
  temp?.next=newNode;
  }
  
}