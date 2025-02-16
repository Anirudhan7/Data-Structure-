import 'dart:collection';

class Node {
  HashMap<String, Node> children = HashMap();
  bool isEnd = false;
}

class Trie {
  Node root = Node();
  void insert(String word) {
    Node temp = root;
    for (int i = 0; i < word.length; i++) {
      if (!temp.children.containsKey(word[i])) {
        temp.children[word[i]] = Node();
      }
      temp = temp.children[word[i]]!;
    }
    temp.isEnd = true;
  }

  bool contains(String word) {
    Node temp = root;
    for (int i = 0; i < word.length; i++) {
      if (!temp.children.containsKey(word[i])) {
        return false;
      }
      temp = temp.children[word[i]]!;
    }
    return temp.isEnd;
  }

  bool startWith(String prefix) {
    Node temp = root;
    for (int i = 0; i < prefix.length; i++) {
      if (!temp.children.containsKey(prefix[i])) {
        return false;
      }
      temp = temp.children[prefix[i]]!;
    }
    return true;
  }

  String longestCommonPrefix() {
    Node temp = root;
    String prefix = '';
    while (temp.children.length == 1 && !temp.isEnd) {
      prefix = prefix + temp.children.keys.first;
      temp = temp.children[prefix[prefix.length - 1]]!;
    }
    return prefix;
  }

  List<String> prefixSearch(String prefix) {
    List<String> result = [];
    Node? temp = root;
    for (int i = 0; i < prefix.length; i++) {
      if (!temp!.children.containsKey(prefix[i])) {
        return result; //return empty if prefix doesnot exist
      }
      temp = temp.children[prefix[i]];
    }
    _collectWords(temp!, prefix, result);
    return result;
  }

  void _collectWords(Node node, String currentWord, List<String> result) {
    if (node.isEnd) {
      result.add(currentWord);
    }
    for (var i in node.children.keys) {
      _collectWords(node.children[i]!, currentWord + i, result);
    }
  }
}
