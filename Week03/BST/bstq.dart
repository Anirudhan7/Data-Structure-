class Node{
  int data;
  Node? left,right;
  Node(this.data);
}
class BinarySearchTree{
  Node? root;
  void insertNode(int data){
    Node newNode =Node(data);
    if(root==null){
      root=newNode;
      return;
    }
    Node? currentNode =root;
    while(true){
      if(currentNode!.data>data){
      if(currentNode.left==null){
        currentNode.left=newNode;
        break;
      }else{
       currentNode=currentNode.left;
      }
      }else{
        if(currentNode.data<data){
          if(currentNode.right==null){
            currentNode.right=newNode;
            break;
          }else{
            currentNode=currentNode.right;
          }
        }
      }
    }
  }
void inorder(){
inroderHelper(root);
}

void inroderHelper(Node? node){
if(node!=null){
  inroderHelper(node.left);
  print(node.data);
  inroderHelper(node.right);
}

}
}

void main(){
  BinarySearchTree bst =BinarySearchTree();
    bst.insertNode(10);
  bst.insertNode(8);
  bst.insertNode(11);
  bst.insertNode(4);
  bst.insertNode(9);
  bst.inorder();
}
