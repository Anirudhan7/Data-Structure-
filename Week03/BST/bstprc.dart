class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinarySarchTree {
  Node? root;

  void insertNode(int data) {
    Node? newNode = Node(data);
    if (root == null) {
      root = newNode;
      return;
    }
    Node? current = root;
    while (true) {
      if (current!.data > data) {
        if(current.left==null){
          current.left=newNode;
          break;
        }else{
          current =current.left;
        }
      }else{
        if(current.data<data){
          if(current.right==null){
            current.right=newNode;
            break;
          }else{
            current=current.right;
          }
        }
      }
    }
  }
}