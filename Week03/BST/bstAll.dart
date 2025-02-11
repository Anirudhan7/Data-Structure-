class Node {
  int data;
  Node? right, left;
  Node(this.data);
}

class BsT {
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
        if (current.left == null) {
          current.left = newNode;
          break;
        } else {
          current = current.left;
        }
      } else {
        if (current.data < data) {
          if (current.right == null) {
            current.right = newNode;
            break;
          } else {
            current = current.right;
          }
        }
      }
    }
  }

  void contains(int data) {
    Node? current = root;
    while (current != null) {
      if (current.data > data) {
        current = current.left;
      } else if (current.data < data) {
        current = current.right;
      } else {
        print("Exist");
        return;
      }
    }
    print('do not exist');
  }
  void inorder(){
    inorderHelp(root);
  }
  void inorderHelp(Node? node){
    if(node!=null){
      inorderHelp(node.left);
      print(node.data);
      inorderHelp(node.right);
      
    }
  }
  void preOrder(){
    preOrderhelp(root);
  }
  void preOrderhelp(Node? node){
   if(node!=null){
      print(node.data);
     preOrderhelp(node.left);
     preOrderhelp(node.right);
    
   }
  }
  void postOrder(){
    postOrderHelper(root);
  }
  void postOrderHelper(Node? node){
  if(node!=null){
    postOrderHelper(node.left);
    postOrderHelper(node.right);
    print(node.data);
  }
  }
}

void main() {
  BsT bst = BsT();
  bst.insertNode(10);
  bst.insertNode(8);
  bst.insertNode(11);
  bst.insertNode(4);
  bst.insertNode(9);
  
  print('inorder');
  bst.inorder();
  
  print('preOeder');
  bst.preOrder();
  print('postOrder');
 bst.postOrder();
}
