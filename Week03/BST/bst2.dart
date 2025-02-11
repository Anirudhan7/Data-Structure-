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
}

void main() {
  BsT insert = BsT();
  insert.insertNode(10);
  insert.insertNode(8);
  insert.insertNode(11);
  insert.insertNode(4);
  insert.insertNode(9);

  insert.inorder();
}
