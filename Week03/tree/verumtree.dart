class Node{
  int data;
  Node? right,left;
  Node(this.data);
}



void inorder(Node? root){
  if(root==null) return;
inorder(root.left);
print(root.data);
inorder(root.right);

}
void preorder(Node? root){
  if(root==null) return;
print(root.data);
preorder(root.left);
preorder(root.right);
}
void postOrder(Node? root){
  if(root ==null){
    return;
  }
  postOrder(root.left);
  postOrder(root.right);
  print(root.data);
}
bool isMirror(Node? root1,Node? root2){
  if(root1==null && root2==null)return true;
  if(root1 ==null || root2==null)return false;

  return (root1.data==root2.data ) && isMirror(root1.left , root2.right) && isMirror(root1.right, root2.left);
}



void main(){
Node root =Node(20);
root.left=Node(10);
root.right=Node(40);
root.left!.left=Node(5);
root.right!.right=Node(15);


}