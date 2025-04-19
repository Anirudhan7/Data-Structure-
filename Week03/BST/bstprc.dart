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
  void inorder(){
   inorderHelper(root);
  }

  void  inorderHelper(Node? node){
    if(node!=null){
      inorderHelper(node.left);
      print(node.data);
      inorderHelper(node.right);
    }
  }
  void preorder(){
    preorderHelper(root);

  }
  void preorderHelper(Node? node){
  if(node!=null){
    print(node.data);
    preorderHelper(node.left);
    preorderHelper(node.right);
  }
  }
  
  void postOrderHelper(Node? node){
     if(node!=null){
      print(node.left);
      print(node.right);
      print(node.data);
     }
  }
}