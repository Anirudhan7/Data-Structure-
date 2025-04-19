void main() {
  Bst bst = Bst();
  bst.insertNode(10);
  bst.insertNode(20);
  bst.insertNode(3);
  bst.insertNode(7);
  bst.insertNode(40);
  bst.inorder();
}

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class Bst {
  Node? root;
  void insertNode(int data) {
    Node newNode = Node(data);
    if (root == null) {
      root = newNode;
      return;
    }

    Node? current = root;
    while (true) {
      if (current!.data < data) {
        if (current.right == null) {
          current.right = newNode;
          break;
        } else {
          current = current.right;
        }
      } else {
        if (current.data > data) {
          if (current.left == null) {
            current.left = newNode;
            break;
          } else {
            current = current.left;
          }
        }
      }
    }
  }

  void inorder() {
    inorderHelper(root);
  }

  inorderHelper(Node? node) {
    if (node != null) {
      inorderHelper(node.left);
      print(node.data);
      inorderHelper(node.right);
    }
  }

  void preorderHelper(Node? node) {
    if (node != null) {
      print(node.data);
    }
  }

  void preorder() {
    preorderHelper(root);
  }

  void posrOrder() {
    posOrderhepler(root);
  }

  void posOrderhepler(Node? node) {
    if (node != null) {
      posOrderhepler(node.left);
      posOrderhepler(node.right);
      print(node.data);
    }
  }
}
