void main() {

  BinarySearchTree tree =BinarySearchTree();
  tree.insert(10);
  tree.insert(20);
  tree.insert(30);
  tree.insert(5);
  print(tree.contains(5));

}

class Node {
  int data;
  Node? right;
  Node? left;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    Node? newNode = Node(data);
    if (root == null) {
      root = newNode;
      return;
    }
    Node? currentNode = root;
    while (true) {
      if (currentNode!.data < data) {
        if (currentNode.left == null) {
          currentNode.left = newNode;
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.data > data) {
          if (currentNode.right == null) {
            currentNode.right = newNode;
            break;
          } else {
            currentNode = currentNode.right;
          }
        }
      }
    }
  }

  bool contains(int data) {
    Node? currentNode = root;
    while (currentNode != null) {
      if (data < currentNode.data) {
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        currentNode = currentNode.left;
      } else {
        return true;
      }
    }
    return false;
  }
}
